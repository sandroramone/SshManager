/* mainview.c generated by valac 0.48.5, the Vala compiler
 * generated from mainview.vala, do not modify */

#include <gtk/gtk.h>
#include <glib-object.h>
#include <glib.h>

#define SSH_MANAGER_VIEW_TYPE_MAIN_VIEW (ssh_manager_view_main_view_get_type ())
#define SSH_MANAGER_VIEW_MAIN_VIEW(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), SSH_MANAGER_VIEW_TYPE_MAIN_VIEW, SshManagerViewMainView))
#define SSH_MANAGER_VIEW_MAIN_VIEW_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), SSH_MANAGER_VIEW_TYPE_MAIN_VIEW, SshManagerViewMainViewClass))
#define SSH_MANAGER_VIEW_IS_MAIN_VIEW(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), SSH_MANAGER_VIEW_TYPE_MAIN_VIEW))
#define SSH_MANAGER_VIEW_IS_MAIN_VIEW_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), SSH_MANAGER_VIEW_TYPE_MAIN_VIEW))
#define SSH_MANAGER_VIEW_MAIN_VIEW_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), SSH_MANAGER_VIEW_TYPE_MAIN_VIEW, SshManagerViewMainViewClass))

typedef struct _SshManagerViewMainView SshManagerViewMainView;
typedef struct _SshManagerViewMainViewClass SshManagerViewMainViewClass;
typedef struct _SshManagerViewMainViewPrivate SshManagerViewMainViewPrivate;

#define SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR (ssh_manager_widgets_header_bar_get_type ())
#define SSH_MANAGER_WIDGETS_HEADER_BAR(obj) (G_TYPE_CHECK_INSTANCE_CAST ((obj), SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR, SshManagerWidgetsHeaderBar))
#define SSH_MANAGER_WIDGETS_HEADER_BAR_CLASS(klass) (G_TYPE_CHECK_CLASS_CAST ((klass), SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR, SshManagerWidgetsHeaderBarClass))
#define SSH_MANAGER_WIDGETS_IS_HEADER_BAR(obj) (G_TYPE_CHECK_INSTANCE_TYPE ((obj), SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR))
#define SSH_MANAGER_WIDGETS_IS_HEADER_BAR_CLASS(klass) (G_TYPE_CHECK_CLASS_TYPE ((klass), SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR))
#define SSH_MANAGER_WIDGETS_HEADER_BAR_GET_CLASS(obj) (G_TYPE_INSTANCE_GET_CLASS ((obj), SSH_MANAGER_WIDGETS_TYPE_HEADER_BAR, SshManagerWidgetsHeaderBarClass))

typedef struct _SshManagerWidgetsHeaderBar SshManagerWidgetsHeaderBar;
typedef struct _SshManagerWidgetsHeaderBarClass SshManagerWidgetsHeaderBarClass;
enum  {
	SSH_MANAGER_VIEW_MAIN_VIEW_0_PROPERTY,
	SSH_MANAGER_VIEW_MAIN_VIEW_NUM_PROPERTIES
};
static GParamSpec* ssh_manager_view_main_view_properties[SSH_MANAGER_VIEW_MAIN_VIEW_NUM_PROPERTIES];
#define _g_object_unref0(var) ((var == NULL) ? NULL : (var = (g_object_unref (var), NULL)))

struct _SshManagerViewMainView {
	GtkGrid parent_instance;
	SshManagerViewMainViewPrivate * priv;
	SshManagerWidgetsHeaderBar* headerbar;
};

struct _SshManagerViewMainViewClass {
	GtkGridClass parent_class;
};

struct _SshManagerViewMainViewPrivate {
	GtkApplicationWindow* app;
};

static gint SshManagerViewMainView_private_offset;
static gpointer ssh_manager_view_main_view_parent_class = NULL;

GType ssh_manager_view_main_view_get_type (void) G_GNUC_CONST;
G_DEFINE_AUTOPTR_CLEANUP_FUNC (SshManagerViewMainView, g_object_unref)
GType ssh_manager_widgets_header_bar_get_type (void) G_GNUC_CONST;
G_DEFINE_AUTOPTR_CLEANUP_FUNC (SshManagerWidgetsHeaderBar, g_object_unref)
SshManagerViewMainView* ssh_manager_view_main_view_new (GtkApplicationWindow* app);
SshManagerViewMainView* ssh_manager_view_main_view_construct (GType object_type,
                                                              GtkApplicationWindow* app);
SshManagerWidgetsHeaderBar* ssh_manager_widgets_header_bar_new (void);
SshManagerWidgetsHeaderBar* ssh_manager_widgets_header_bar_construct (GType object_type);
static void ssh_manager_view_main_view_finalize (GObject * obj);
static GType ssh_manager_view_main_view_get_type_once (void);

static inline gpointer
ssh_manager_view_main_view_get_instance_private (SshManagerViewMainView* self)
{
	return G_STRUCT_MEMBER_P (self, SshManagerViewMainView_private_offset);
}

static gpointer
_g_object_ref0 (gpointer self)
{
#line 10 "../src/view/mainview.vala"
	return self ? g_object_ref (self) : NULL;
#line 76 "mainview.c"
}

SshManagerViewMainView*
ssh_manager_view_main_view_construct (GType object_type,
                                      GtkApplicationWindow* app)
{
	SshManagerViewMainView * self = NULL;
	GtkApplicationWindow* _tmp0_;
	GtkApplicationWindow* _tmp1_;
	GtkApplicationWindow* _tmp2_;
	GtkApplicationWindow* _tmp3_;
	GtkApplicationWindow* _tmp4_;
	SshManagerWidgetsHeaderBar* _tmp5_;
	GtkApplicationWindow* _tmp6_;
	SshManagerWidgetsHeaderBar* _tmp7_;
#line 9 "../src/view/mainview.vala"
	g_return_val_if_fail (app != NULL, NULL);
#line 9 "../src/view/mainview.vala"
	self = (SshManagerViewMainView*) g_object_new (object_type, NULL);
#line 10 "../src/view/mainview.vala"
	_tmp0_ = _g_object_ref0 (app);
#line 10 "../src/view/mainview.vala"
	_g_object_unref0 (self->priv->app);
#line 10 "../src/view/mainview.vala"
	self->priv->app = _tmp0_;
#line 11 "../src/view/mainview.vala"
	_tmp1_ = self->priv->app;
#line 11 "../src/view/mainview.vala"
	gtk_window_set_default_size ((GtkWindow*) _tmp1_, 800, 600);
#line 12 "../src/view/mainview.vala"
	_tmp2_ = self->priv->app;
#line 12 "../src/view/mainview.vala"
	gtk_widget_set_size_request ((GtkWidget*) _tmp2_, 800, 600);
#line 13 "../src/view/mainview.vala"
	_tmp3_ = self->priv->app;
#line 13 "../src/view/mainview.vala"
	gtk_window_set_deletable ((GtkWindow*) _tmp3_, TRUE);
#line 14 "../src/view/mainview.vala"
	_tmp4_ = self->priv->app;
#line 14 "../src/view/mainview.vala"
	gtk_window_set_resizable ((GtkWindow*) _tmp4_, TRUE);
#line 16 "../src/view/mainview.vala"
	_tmp5_ = ssh_manager_widgets_header_bar_new ();
#line 16 "../src/view/mainview.vala"
	g_object_ref_sink (_tmp5_);
#line 16 "../src/view/mainview.vala"
	_g_object_unref0 (self->headerbar);
#line 16 "../src/view/mainview.vala"
	self->headerbar = _tmp5_;
#line 17 "../src/view/mainview.vala"
	_tmp6_ = self->priv->app;
#line 17 "../src/view/mainview.vala"
	_tmp7_ = self->headerbar;
#line 17 "../src/view/mainview.vala"
	gtk_window_set_titlebar ((GtkWindow*) _tmp6_, (GtkWidget*) _tmp7_);
#line 9 "../src/view/mainview.vala"
	return self;
#line 134 "mainview.c"
}

SshManagerViewMainView*
ssh_manager_view_main_view_new (GtkApplicationWindow* app)
{
#line 9 "../src/view/mainview.vala"
	return ssh_manager_view_main_view_construct (SSH_MANAGER_VIEW_TYPE_MAIN_VIEW, app);
#line 142 "mainview.c"
}

static void
ssh_manager_view_main_view_class_init (SshManagerViewMainViewClass * klass,
                                       gpointer klass_data)
{
#line 4 "../src/view/mainview.vala"
	ssh_manager_view_main_view_parent_class = g_type_class_peek_parent (klass);
#line 4 "../src/view/mainview.vala"
	g_type_class_adjust_private_offset (klass, &SshManagerViewMainView_private_offset);
#line 4 "../src/view/mainview.vala"
	G_OBJECT_CLASS (klass)->finalize = ssh_manager_view_main_view_finalize;
#line 155 "mainview.c"
}

static void
ssh_manager_view_main_view_instance_init (SshManagerViewMainView * self,
                                          gpointer klass)
{
#line 4 "../src/view/mainview.vala"
	self->priv = ssh_manager_view_main_view_get_instance_private (self);
#line 164 "mainview.c"
}

static void
ssh_manager_view_main_view_finalize (GObject * obj)
{
	SshManagerViewMainView * self;
#line 4 "../src/view/mainview.vala"
	self = G_TYPE_CHECK_INSTANCE_CAST (obj, SSH_MANAGER_VIEW_TYPE_MAIN_VIEW, SshManagerViewMainView);
#line 6 "../src/view/mainview.vala"
	_g_object_unref0 (self->priv->app);
#line 7 "../src/view/mainview.vala"
	_g_object_unref0 (self->headerbar);
#line 4 "../src/view/mainview.vala"
	G_OBJECT_CLASS (ssh_manager_view_main_view_parent_class)->finalize (obj);
#line 179 "mainview.c"
}

static GType
ssh_manager_view_main_view_get_type_once (void)
{
	static const GTypeInfo g_define_type_info = { sizeof (SshManagerViewMainViewClass), (GBaseInitFunc) NULL, (GBaseFinalizeFunc) NULL, (GClassInitFunc) ssh_manager_view_main_view_class_init, (GClassFinalizeFunc) NULL, NULL, sizeof (SshManagerViewMainView), 0, (GInstanceInitFunc) ssh_manager_view_main_view_instance_init, NULL };
	GType ssh_manager_view_main_view_type_id;
	ssh_manager_view_main_view_type_id = g_type_register_static (gtk_grid_get_type (), "SshManagerViewMainView", &g_define_type_info, 0);
	SshManagerViewMainView_private_offset = g_type_add_instance_private (ssh_manager_view_main_view_type_id, sizeof (SshManagerViewMainViewPrivate));
	return ssh_manager_view_main_view_type_id;
}

GType
ssh_manager_view_main_view_get_type (void)
{
	static volatile gsize ssh_manager_view_main_view_type_id__volatile = 0;
	if (g_once_init_enter (&ssh_manager_view_main_view_type_id__volatile)) {
		GType ssh_manager_view_main_view_type_id;
		ssh_manager_view_main_view_type_id = ssh_manager_view_main_view_get_type_once ();
		g_once_init_leave (&ssh_manager_view_main_view_type_id__volatile, ssh_manager_view_main_view_type_id);
	}
	return ssh_manager_view_main_view_type_id__volatile;
}
