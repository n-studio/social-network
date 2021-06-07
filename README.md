# the Social Network

## Stack

* Ruby on Rails 6.1
* Postgresql
* Tailwind CSS
* Hotwire

# Run in development

```bash
bundle && yarn
gem install mailcatcher -- --with-cflags="-Wno-error=implicit-function-declaration"
bin/rails db:create db:migrate
bin/foreman start
```
