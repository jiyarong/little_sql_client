# LittleSqlClient
A streamlined SQL query tool

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'little_sql_client'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install little_sql_client
```

## Contributing
```ruby
$ rails g little_sql_client:install
```
in config/initializer/little_sql_client.rb 
```ruby
# setup your safe ip in production mode
LittleSqlClient::Config.ip_white_list = [
    # '127.0.0.1'
]
```
to setup your safe ip

in routes.rb
```ruby
  Rails.application.routes.draw do
    mount LittleSqlClient::Engine => "/sql_records"
  end
```
and then open url "`your_project_host`/sql_records"


## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
