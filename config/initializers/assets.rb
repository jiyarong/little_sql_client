if Rails.application.config.respond_to?(:assets)
  Rails.application.config.assets.precompile += %w( sql-formatter.min.js )
end