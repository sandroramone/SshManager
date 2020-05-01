/* connectiondb.vala
 *
 * Copyright (C) 2017 Sandro Rodrigo Santos <misfitssandro@gmail.com>
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using Gee;
using Sqlite;
using SshManager.Model;

namespace SshManager.Db {
    /*
     * Class for connection database action
     */
    public class Db {

		string create_table = """
		CREATE TABLE IF NOT EXISTS connection (
			id INTEGER PRIMARY KEY AUTOINCREMENT,
			name VARCHAR NOT NULL,
			connection VARCHAR NOT NULL,
			password VARCHAR NOT NULL,
			port NUMBER NOT NULL
		);
		""";

		string home = Environment.get_home_dir();
		string dir_path = ".sshmanager";
		string file_path = "sshmanager.db";
		File file;
	    private string db_name;
	    private Database db;
	    private Statement stmt;
	    private int rc;
	    private string command;

	    /*
	     * Contructor for class ConnectionDb
	     *
	     * @return Db
	     */
	    public Db () {
			var dir = File.new_for_path (home).get_child(dir_path);
			
			if (!dir.query_exists ()) {
				if (!dir.make_directory (null)) {
					stdout.printf ("Nào conseguiu criar diretório.");
				} else {
					stdout.printf ("Path %s", dir.get_basename ());
				}
			}

			this.db_name = @"$home/$dir_path/$file_path";
			file = File.new_for_path (this.db_name);
			
			if (!file.query_exists ()) {
				var new_file = file.create (FileCreateFlags.PRIVATE);
				if (!file.query_exists ()) {
					stderr.printf ("Ainda não existe o arquivo '%s'.\n", file.get_path ());
				}
			}

			this.open_db ();
			
			string errmsg;
			this.rc = db.exec (this.create_table, null, out errmsg);
			if (this.rc != Sqlite.OK) {
				stderr.printf ("Error: %s\n", errmsg);
			} else {
				print ("Created.\n");
			}
	    }

	    public void set_command(string command) {
		    this.command = command;
	    }

	    public int open_db () {
		    if ((this.rc = Database.open (this.db_name, out this.db)) == 1) {
			    stdout.printf ("Deu Erro %s \n", this.db.errmsg ());
			    return rc;
			}
			
		    stdout.printf ("Deu certo\n");
		    return 0;
		}
		
		public int callback (int n_columns, string[] values, string[] colmuns) {
			for (int i = 0; i < n_columns; i++) {
				stdout.printf ("%s = %s\n", colmuns[i], values[i]);
			}
			stdout.printf ("\n");
			return 0;
		} 

	    public int insert () {
			stdout.printf(this.command);
			string err;
			if ((this.rc = this.db.exec (this.command, this.callback, out err)) == 1) {
			    stdout.printf ("Erro %s \n", this.db.errmsg ());
			    return rc;
			}
			stdout.printf ("Deu erro? %s", err);
			stdout.printf ("Deu certo %d \n", this.rc);
			this.db.commit_hook (null);
		    return 0;
	    }

	    public ArrayList<Connection> get_connections () {

		    if ((this.rc = this.db.prepare_v2 (this.command, -1, out this.stmt, null)) == 1) {
			    stdout.printf ("Erro %s \n", this.db.errmsg ());
		    }
		    var connections = new ArrayList<Connection> ();

		    do {
			    this.rc = this.stmt.step();

			    switch (this.rc) {
				    case Sqlite.DONE:
					    break;
				    case Sqlite.ROW:
					    var connection = new Connection();
					    connection.id = int.parse(this.stmt.column_text(0));
					    connection.name = this.stmt.column_text(1);
					    connection.url = this.stmt.column_text(2);
					    connection.password = this.stmt.column_text(3);
					    connections.add (connection);
					    break;
				    default:
					    break;
			    }
		    } while (this.rc == Sqlite.ROW);

		    foreach (Connection connection in connections) {
			    stdout.printf ("%s:\n 		%d %s %s \n",
			    connection.name,
			    connection.id,
			    connection.url,
			    connection.password);
		    }

		    return connections;
	    }
    }
}
