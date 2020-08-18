<?php
    /**
     * Created by PhpStorm.
     * User: triest
     * Date: 18.08.2020
     * Time: 20:16
     */

    namespace App\Services;


    use App\Database;
    use App\Table;


    class SDatabaseBackup
    {
        public $host,
                $user = 'root',
                $pass = '',
                $dbname = 'sakura',
                $link;
        public $database = null;

        public function backup($database_id = null)
        {

            if ($database_id != null) {
                $database = Database::findOrFail(intval($database_id));
            } else {
                $database = new Database();
                $database->name = "sakura";
                $database->save();
            }

            $this->host = '127.0.0.1';
            $this->user = 'root';
            $this->pass = '';
            $this->dbname = 'sakura';

            $rez_array = $this->count_entities($database);

            if (empty($rez_array)) {
                return true;
            }
            $this->mark_tables_and_rows($database, $rez_array);

            $this->backup_tables($database);

            return $database;
        }

        public $limit = 21;

        function mark_tables_and_rows($database, $rez_array)
        {
            $count = 0;
            $array_tables = array();
            foreach ($rez_array as $key => $value) {

                $table = Table::select(['*'])->where('name', $key)->where('database_id', $database->id)->first();
                if ($table == null) {
                    $table = new Table();
                    $table->name = $key;
                    $table->num_rows = $value;
                    $table->database_id = $database->id;
                    $table->save();
                }
                $count = $count + $value;


                if ($value <= $this->limit) {  //TODO а модет быть и тут
                    $array_tables[] = array($key => $value);


                    $table->name = $key;
                    $table->first_row = 1;
                    if (($table->last_row + $this->limit) > $value) {
                        $table->last_row = $value;
                    } else {
                        $table->last_row = $table->last_row + $this->limit;
                    }
                    $table->all_rows = 1;
                    $table->save();
                    $database->tables()->save($table);

                } elseif ($count > $this->limit) {

                    $table->name = $key;
                    $table->first_row = 1;

                    if ($table->last_row + $this->limit < $table->num_rows) {
                        $table->last_row = $table->last_row + $this->limit;
                        $table->all_rows = 0;
                    } else {
                        $table->last_row = $table->num_rows;
                        $table->all_rows = 1;
                    }


                    $table->save();
                    $database->tables()->save($table);

                    break;
                }
            }
            return $array_tables;
        }


        function count_entities(Database $database, $tables = "*") // считат
        {
            $link = mysqli_connect($this->host, $this->user, $this->pass, $this->dbname);


            $tables = array();
            $result = mysqli_query($link, 'SHOW TABLES');
            while ($row = mysqli_fetch_row($result)) {
                $tableTemp = Table::select(['*'])->where("database_id", $database->id)->where('name', $row[0])->first();
                if ($tableTemp != null) {
                    if ($tableTemp->last_row != $tableTemp->num_rows) {
                        $tables[] = $row[0];
                    }
                } else {
                    $tables[] = $row[0];
                }
            }
            if (empty($tables)) {
                return $tables;
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
            //   $tables = $database->tables()->get();

            $tables = Table::select(['*'])->where('database_id', $database->id)->where('completed', 0)->get();
            $return = "";

            /**/

            foreach ($tables as $item) {
                $item->save();
                $qwery_string = 'select * from ' . $item->name;

                $qwery_string .= ' limit ' . $this->limit;                //TODO косяк здесь! Он делает ежное число проходов, но не отступает.
                if ($item->last_row != null && $item->last_row > 1) {
                    $qwery_string .= ' offset ' . intval($item->last_row - 1); //TODO или тут.
                }


                if ($item->num_rows == $item->last_row) {
                    $item->completed = 1;
                    $item->save();
                }

                if ($item->all_rows == 1) {
                    $item->completed = 1;
                    $item->save();
                }


                try {
                    $result = mysqli_query($link, $qwery_string);

                    $num_fields = mysqli_num_fields($result);
                    $num_rows = mysqli_num_rows($result);
                } catch (\Exception $exception) {
                    exit(1);
                }


                //надо будет не запускать при вовторном захоже
                if ($item->show_create == 1) {
                    $row2 = mysqli_fetch_row(mysqli_query($link, 'SHOW CREATE TABLE ' . $item->name));
                    $return .= "\n\n" . $row2[1] . ";\n\n";
                    $item->show_create = 0;
                    $item->save();
                }
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
                file_put_contents($fileName, $return, FILE_APPEND);
                $database->save();
            } else {
                $fileName = $database->filename;
                file_put_contents($fileName, $return, FILE_APPEND);
            }

            return $fileName;
        }
    }