using SshManager.Config;
using SshManager.Db;

namespace SshManager.Widgets {
    public class NewConnectionDialog : Gtk.Dialog {
        Db.Db db = new Db.Db();
        Gtk.Entry nome;
        Gtk.Entry ssh_address;
        Gtk.Entry ssh_password;
        Gtk.Entry port;

        public NewConnectionDialog (Gtk.Window parent) {
            this.resizable = false;
            this.deletable = false;
            this.set_title ("Nova conexão Ssh");
            this.set_transient_for (parent);
            this.set_default_size (500, 200);
            this.set_size_request (500, 200);
            this.set_modal (true);

            var grid = new Gtk.Grid ();
            grid.row_spacing = 5;
            grid.column_spacing = 5;
            grid.margin = 5;
            grid.margin_top = 5;
            grid.margin_bottom = 5;
            var row = 0;

            this.nome = new Gtk.Entry ();
            this.ssh_address = new Gtk.Entry ();
            this.ssh_password = new Gtk.Entry ();
            this.port = new Gtk.Entry ();
            
            add_option(grid, "name: ", this.nome, ref row);
            add_option(grid, "Ssh address: ", this.ssh_address, ref row);
            add_option(grid, "Ssh password: ", this.ssh_password, ref row);
            add_option(grid, "port: ", this.port, ref row);
            
            var save_button = new Gtk.Button.with_label ("Save");
            save_button.clicked.connect(() => {
                this.save_data();
                this.destroy ();
            });

            grid.attach (save_button, 0, row, 20, 1);

            var close_button = new Gtk.Button.with_label (Properties.CLOSE);
            close_button.clicked.connect (() => { this.destroy (); });
            close_button.halign = Gtk.Align.FILL;
            
            grid.attach_next_to (close_button, save_button, Gtk.PositionType.RIGHT, 33, 1);

            this.get_content_area ().add (grid);
        }

        private void add_option (Gtk.Grid grid, string label_text, Gtk.Widget widget, ref int row) {
            var label = new Gtk.Label(label_text);
            label.halign         = Gtk.Align.END;
            label.hexpand        = true;
            label.margin_start    = 10;
            label.margin_top     = 0;

            widget.halign     = Gtk.Align.FILL;
            widget.hexpand    = true;
            widget.margin_top = 0;

            grid.attach (label, 0, row, 1, 1);
            grid.attach_next_to (widget, label, Gtk.PositionType.RIGHT, 50, 1);

            row++;
        }

        public int save_data () {
            stdout.printf ("Deu certo, chamou o método!");
            var nome = this.nome.get_text ();
            var connection = this.ssh_address.get_text ();
            var pass = this.ssh_password.get_text ();
            var port = this.port.get_text ();
            db.set_command (@"insert into connection (name, connection, password, port) values ('$nome', '$connection', '$pass', $port);");
            db.insert ();
            return 0;
        }
    }
}