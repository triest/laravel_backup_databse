<?php

    namespace App\Http\Controllers;

    use App\Database;
    use App\Services\SDatabaseBackup;
    use App\Table;
    use Illuminate\Http\Request;
    use PhpParser\Node\Expr\Ternary;

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
            $sbackup = new SDatabaseBackup();
            $database = $sbackup->backup($request->get('database_id'));
            if ($database instanceof Database) {
                return redirect('/backup?database_id=' . $database->id);
            } else {
                $database = Database::select(['*'])->where('id', $request->get('database_id'))->first();
                return view('success')->with(['database' => $database]);
            }
        }

        public function input(Request $request)
        {
            return view("welcome");
        }

        public function store(Request $request)
        {
            $validatedData = $request->validate([
                    'name' => 'required',
                    'user' => 'required',
                    'host' => 'required'
            ]);

            $database = new Database();
            $database->name = $request->name;
            $database->password = $request->password;
            $database->host = $request->host;
            $database->user = $request->user;
            $database->save();

            return redirect('/backup?database_id=' . $database->id);
        }

    }

