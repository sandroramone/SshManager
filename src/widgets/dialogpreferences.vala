using SshManager.Config;

namespace SshManager.Widgets {
    public class DialogPreferences : Gtk.Dialog {

        public DialogPreferences (Gtk.Window parent) {
            this.resizable = false;
            this.deletable = false;
            this.set_transient_for (parent);
            this.set_default_size (500, 350);
            this.set_size_request (500, 350);
            this.set_modal (true);

            var grid = new Gtk.Grid ();
            grid.row_spacing = 5;
            grid.column_spacing = 5;
            grid.margin = 12;
            grid.margin_top = 5;
            grid.margin_bottom = 5;

            var close_button = new Gtk.Button.with_label (Properties.CLOSE);
            close_button.clicked.connect (() => { this.destroy (); });
            grid.attach_next_to (close_button, null, Gtk.PositionType.RIGHT, 3, 1);

            this.get_content_area ().add (grid);
        } 
    }
}