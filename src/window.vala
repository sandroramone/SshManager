// using Gtk;
// using Vte;
using SshManager.View;
using SshManager.Controller;

namespace SshManager {
    public class Window : Gtk.ApplicationWindow {

        public Window (Gtk.Application app) {
            Object (
                application: app,
                deletable: true,
                resizable: true
            );

            build (app);
        }

        private void build (Gtk.Application app) {
            var app_view = new MainView (this);
            new AppController (this, app, app_view);

            this.add (app_view);
            this.show_all ();
        }
    }
}


// vai dentro do construtor 
//            this.title = "SshManager";
//
//            HeaderBar headerbar = new HeaderBar ();
//            headerbar.set_title ("Ssh Manager");
//            headerbar.set_show_close_button (true);
//
//            Button btn_plus = new Button.from_icon_name ("list-add");
//            headerbar.add (btn_plus);
//            
//            this.set_titlebar (headerbar);
//            this.set_default_size (800, 600);
//
//            Paned paineis = new Paned(Orientation.HORIZONTAL);
//
//            ListBox lbox = new ListBox();
//            Button teste = new Button.with_label ("Localhost");
//            lbox.insert (teste, 0);
//
//            Terminal terminal = new Terminal();
//
//            string[] bash = { "/bin/bash", "ssh sandro@localhost" };
//
//            terminal.spawn_sync (
//                PtyFlags.DEFAULT,
//                "~/",
//                bash,
//                { },
//                SpawnFlags.DO_NOT_REAP_CHILD,
//                null,
//                null,
//                null
//            );
//
//            terminal.feed_child((uint8[])bash[1]);
//
//            paineis.add (lbox);
//            paineis.add (terminal);
//            this.add (paineis);
//
//            this.destroy.connect (Gtk.main_quit);
//
//            this.show_all ();