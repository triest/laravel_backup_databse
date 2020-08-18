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

            /*
            if ($request->has('database_id')) {
                $database = Database::findOrFail(intval($request->get('database_id')));
            } else {
                $database = new Database();
                $database->name = "sakura";
                $database->save();
            }
            */

            $sbackup = new SDatabaseBackup();
            $database = $sbackup->backup($request->get('database_id'));
            if ($database instanceof Database) {
                return redirect('/backup?database_id=' . $database->id);
            } else {
                return response()->json(true);
            }


        }


    }

