module LittleSqlClient
  class Engine < ::Rails::Engine
    isolate_namespace LittleSqlClient

    config.app_middleware.use ExceptionNotification::Rack

  end
end