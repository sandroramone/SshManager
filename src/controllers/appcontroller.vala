using SshManager.View;
using SshManager.Widgets;

namespace SshManager.Controller {
    public class AppController {
        private Gtk.Application application;
        private MainView app_view;
        private DialogPreferences dialog_preferences;
        private NewConnectionDialog connection_dialog;

        public AppController (Gtk.ApplicationWindow window, Gtk.Application app, MainView view) {
            this.application = app;
            this.app_view = view;

            on_activate_button_preferences (window);
        }

        private void on_activate_button_preferences (Gtk.ApplicationWindow window) {
            this.app_view.headerbar.item_selected.connect(() => {
                this.dialog_preferences = new DialogPreferences (window);
                this.dialog_preferences.show_all ();
            });

            this.app_view.headerbar.btn_plus.clicked.connect(()  => {
                this.connection_dialog = new NewConnectionDialog (window);
                this.connection_dialog.show_all ();
            });
        }
    }
}