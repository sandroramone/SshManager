using SshManager.Widgets;

namespace SshManager.View {
    public class MainView : Gtk.Grid {

        private Gtk.ApplicationWindow app;
        public HeaderBar headerbar;

        public MainView (Gtk.ApplicationWindow app) {
            this.app = app;
            this.app.set_default_size (800, 600);
            this.app.set_size_request (800, 600);
            this.app.deletable = true;
            this.app.resizable = true;

            this.headerbar = new HeaderBar();
            this.app.set_titlebar (this.headerbar);
        }
    }
}