using SshManager.Config;

namespace SshManager {

    public class Application : Gtk.Application {

        private Window window { get; private set; default = null; }

        public Application () {
            //  Object (
            //      application_id: Properties.TITLE,
            //      flags: ApplicationFlags.FLAGS_NONE
            //  );
        }

        public override void activate () {
            if (window == null) {
                window = new Window (this);
                add_window (window);
                window.show_all ();
            }

            var quit_action = new SimpleAction ("quit", null);
            quit_action.activate.connect (() => {
                if (window != null) {
                    window.destroy ();
                }
            });

            add_action (quit_action);
            add_accelerator ("<Control>q", "app.quit", null);
        }
    }
}