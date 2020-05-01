sshmanger_sources = [
  'model/connection.vala',
  'db/db.vala',
  'config/properties.vala',
  'widgets/headerbar.vala',
  'widgets/dialogpreferences.vala',
  'widgets/newconnection.vala',
  'view/mainview.vala',
  'controllers/appcontroller.vala',
  'window.vala',
  'main.vala',
  'app.vala'
]

sshmanger_deps = [
  dependency('gio-2.0', version: '>= 2.50'),
  dependency('gtk+-3.0', version: '>= 3.22'),
  dependency('vte-2.91', version: '>= 0.50'),
  dependency('sqlite3', version: '>= 3.31'),
  dependency('gee-0.8', version: '>= 0.20'),
]

# subdir('model')
# subdir('db')

executable('sshmanger', sshmanger_sources,
  vala_args: '--target-glib=2.50',  dependencies: sshmanger_deps,
  install: true,
)
