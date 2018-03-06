require 'rails/generators'
module LittleSqlClient
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "Create LittleSqlClient's base files"
      source_root File.expand_path('../../../../', __FILE__)

      def add_initializer
        template 'config/initializers/little_sql_client.rb', 'config/initializers/little_sql_client.rb'
      end

    end
  end
end
