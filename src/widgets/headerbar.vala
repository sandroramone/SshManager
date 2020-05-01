using SshManager.Config;

namespace SshManager.Widgets {
    public class HeaderBar : Gtk.HeaderBar {
        public signal void item_selected();

        public Gtk.MenuButton app_menu;
        public Gtk.Button btn_plus;
        public Gtk.Menu menu;

        public HeaderBar () {
            this.set_title (Properties.TITLE);
            this.set_show_close_button (true);
            icon_settings( );
            call_add_sshaddress ();
        }

        private void icon_settings () {
            this.app_menu = new Gtk.MenuButton();
            this.app_menu.set_image (new Gtk.Image.from_icon_name ("open-menu-symbolic", Gtk.IconSize.LARGE_TOOLBAR));
            this.app_menu.tooltip_text = Properties.SETTINGS;

            menu_settings();

            this.app_menu.popup = this.menu;
            this.pack_end (this.app_menu);
        }

        private void call_add_sshaddress () {
            this.btn_plus = new Gtk.Button.from_icon_name ("list-add");
            this.pack_start (this.btn_plus);
        }

        private void menu_settings () {
            var about_item = new Gtk.MenuItem.with_label (Properties.PREFERENCES);
            about_item.activate.connect(() => {
                item_selected ();
            });

            this.menu = new Gtk.Menu ();
            this.menu.add (about_item);
            this.menu.show_all ();
        }
    }
}