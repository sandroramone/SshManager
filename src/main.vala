/* main.vala
 *
 * Copyright 2020 Sandro Ramone
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

// using Gtk;
// using Vte;
// 
// namespace SshManager {
// 
// 	int main (string[] args) {
// 		Gtk.Application app = new Gtk.Application("sshmanager", ApplicationFlags.IS_LAUNCHER);
// 		var window = new Window(app);
// 
// 		/* You can add GTK+ widgets to your window here.
// 		 * See https://developer.gnome.org/ for help.
// 		 */
// 
// 		// ConnectionDb con = new ConnectionDb();
// 		// con.set_command("insert into connection(name, url, password) values('teste', 'teste.com', '123456')");
// 		// con.insert();
// 
// 		// con.set_command("select id, name, url, password from connection");
// 		// con.get_connections ();
// 
// 		Gtk.main ();
// 		return 0; 
// 	}
// }

public static void main (string [] args) {
    var app = new SshManager.Application ();
    app.run (args);
}