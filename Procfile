web: bin/rails s -p $PORT
webpacker: bin/webpack-dev-server
mailer: ruby -rbundler/setup -e "Bundler.unbundled_exec('mailcatcher', '--foreground')"
guard: bin/guard -g livereload -i
