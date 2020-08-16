<?php

    namespace App\Http\Controllers;

    use App\Database;
    use App\Table;
    use Illuminate\Http\Request;

    class DatabaseController extends Controller
    {
        //

        public $host,
                $user,
                $pass,
                $dbname,
                $link;


        /**
         * @param Request $request
         */
        public function index(Request $request)
        {

            if ($request->has('database_id')) {
                $database = Database::findOrFail(intval($request->get('database_id')));
            } else {
                $database = new Database();
                $database->name = "sakura";
                $database->save();
            }

            $this->host = '127.0.0.1';
            $this->user = 'root';
            $this->pass = '';
            $this->dbname = 'sakura';

            $rez_array = [];
            if (!isset($num_rows) || !isset($num_tables)) {
                $rez_array = $this->count_entites($database);
            }

            $this->mark_tables_and_rows($database, $rez_array);


            $this->backup_tables($database);

            //   return redirect('/backup?database_id=' . $database->id);

        }

        public $limit = 21;

        function mark_tables_and_rows($database, $rez_array)
        {
            $count = 0;
            $array_tables = array();
            /*
                        $tables=Table::select('*')->where('database_id',$database->id)->where('all_rows',0)->first();
                        dump($tables);
            */

            foreach ($rez_array as $key => $value) {
                $count = $count + $value;

                if ($count <= $this->limit) {
                    $array_tables[] = array($key => $value);
                    $table = new  Table();

                    $table->name = $key;
                    $table->first_row = 1;
                    $table->last_row = $value;
                    $table->all_rows = 1;
                    $table->save();
                    $database->tables()->save($table);

                } elseif ($count > $this->limit) {
                    $table = new Table();
                    $table->name = $key;
                    $table->first_row = 1;
                    $table->last_row = $value;
                    $table->all_rows = 0;
                    $table->save();
                    $database->tables()->save($table);
                    break;
                }
            }
            return $array_tables;
        }


        function count_entites(Database $database, $tables = "*") // считат
        {
            $link = mysqli_connect($this->host, $this->user, $this->pass, $this->dbname);


            $tables_temp = Table::select('*')->where('database_id', $database->id)->where('all_rows', 1)->get();

            if ($tables == '*') {
                $tables = array();
                $result = mysqli_query($link, 'SHOW TABLES');
                while ($row = mysqli_fetch_row($result)) {

                    foreach ($tables_temp as $item) {

                        if ($item->name == $row[0] && $item->all_rows == 1) {  // пропускаем, если таблица скопированна полностью
                            continue 2;
                        }
                    }
                    $tables[] = $row[0];
                }


            } else {
                $tables = is_array($tables) ? $tables : explode(',', $tables);
            }
            $rez_array = array();
            foreach ($tables as $table) {
                try {
                    $result = mysqli_query($link, 'select count(*) from ' . $table);
                    $row = mysqli_fetch_row($result);
                } catch (\Exception $exception) {
                    continue;
                }
                $rez_array[$table] = intval($row[0]);
            }
            
            return $rez_array;
        }


        function backup_tables(Database $database)
        {
            $link = mysqli_connect($this->host, $this->user, $this->pass, $this->dbname);

            if (mysqli_connect_errno()) {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
                exit;
            }
            mysqli_query($link, "SET NAMES 'utf8'");
            $tables = $database->tables()->get();
            $return = "";
            foreach ($tables as $item) {

                $qwery_string = 'select * from ' . $item->name;
                if ($item->all_rows != 1) {
                    $qwery_string .= ' limit ' . $item->last_row;
                    $qwery_string .= ' offset ' . intval($item->first_row - 1);
                }


                // $result = mysqli_query($link, $qwery_string);
                try {
                    $result = mysqli_query($link, $qwery_string);

                    $num_fields = mysqli_num_fields($result);
                    $num_rows = mysqli_num_rows($result);
                } catch (\Exception $exception) {
                    exit(1);
                }


                //надо будет не запускать при вовторном захоже
                $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE ' . $item->name));
                $return .= "\n\n" . $row2[1] . ";\n\n";
                $counter = 1;

                //Over tables
                for ($i = 0; $i < $num_fields; $i++) {   //Over rows
                    while ($row = mysqli_fetch_row($result)) {
                        if ($counter == 1) {

                            $return .= 'INSERT INTO ' . $item->name . ' VALUES(';
                        } else {
                            $return .= '(';
                        }

                        //Over fields
                        for ($j = 0; $j < $num_fields; $j++) {
                            $row[$j] = addslashes($row[$j]);
                            $row[$j] = str_replace("\n", "\\n", $row[$j]);
                            if (isset($row[$j])) {
                                $return .= '"' . $row[$j] . '"';
                            } else {
                                $return .= '""';
                            }
                            if ($j < ($num_fields - 1)) {
                                $return .= ',';
                            }
                        }

                        if ($num_rows == $counter) {
                            $return .= ");\n";
                        } else {
                            $return .= "),\n";
                        }
                        ++$counter;
                    }
                }
                $return .= "\n\n\n";

            }


            if ($database->filename == "" || $database->filename == null) {
                $fileName = $fileName = 'backup-' . time() . '-' . '.sql';
                $database->filename = $fileName;
                $database->save();
            } else {
                $fileName = $database->filename;
            }

            $handle = fopen($fileName, 'w+');
            fwrite($handle, $return);
            if (fclose($handle)) {
                return $fileName;
            }

            return $fileName;
        }


        function backup_tables2($host, $user, $pass, $dbname, $tables = '*', $table = null, $row = null, $first = true)
        {
            $link = mysqli_connect($host, $user, $pass, $dbname);

            // Check connection
            if (mysqli_connect_errno()) {
                echo "Failed to connect to MySQL: " . mysqli_connect_error();
                exit;
            }

            mysqli_query($link, "SET NAMES 'utf8'");

            //get all of the tables
            if ($tables == '*') {
                $tables = array();
                $result = mysqli_query($link, 'SHOW TABLES');
                while ($row = mysqli_fetch_row($result)) {
                    $tables[] = $row[0];
                }
            } else {
                $tables = is_array($tables) ? $tables : explode(',', $tables);
            }

            $return = '';
            //cycle through
            foreach ($tables as $table) {
                $result = mysqli_query($link, 'SELECT * FROM ' . $table);
                $num_fields = mysqli_num_fields($result);
                $num_rows = mysqli_num_rows($result);
                if ($first == true) {
                    $return .= 'DROP TABLE IF EXISTS ' . $table . ';';
                }
                $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE ' . $table));
                $return .= "\n\n" . $row2[1] . ";\n\n";
                $counter = 1;

                //Over tables
                for ($i = 0; $i < $num_fields; $i++) {   //Over rows
                    while ($row = mysqli_fetch_row($result)) {
                        if ($counter == 1) {
                            $return .= 'INSERT INTO ' . $table . ' VALUES(';
                        } else {
                            $return .= '(';
                        }

                        //Over fields
                        for ($j = 0; $j < $num_fields; $j++) {
                            $row[$j] = addslashes($row[$j]);
                            $row[$j] = str_replace("\n", "\\n", $row[$j]);
                            if (isset($row[$j])) {
                                $return .= '"' . $row[$j] . '"';
                            } else {
                                $return .= '""';
                            }
                            if ($j < ($num_fields - 1)) {
                                $return .= ',';
                            }
                        }

                        if ($num_rows == $counter) {
                            $return .= ");\n";
                        } else {
                            $return .= "),\n";
                        }
                        ++$counter;
                    }
                }
                $return .= "\n\n\n";
            }

            //save file
            $fileName = 'db-backup-' . time() . '-' . (md5(implode(',', $tables))) . '.sql';
            $handle = fopen($fileName, 'w+');
            fwrite($handle, $return);
            if (fclose($handle)) {
                //  echo "Done, the file name is: " . $fileName;
                //exit;
                return $fileName;
            }
        }

    }

