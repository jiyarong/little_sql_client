$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "little_sql_client/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "little_sql_client"
  s.version     = LittleSqlClient::VERSION
  s.authors     = ["纪亚荣"]
  s.email       = ["583255925@qq.com"]
  s.homepage    = "https://github.com/jiyarong/little_sql_client.git"
  s.summary     = "一个sql客户端"
  s.description = "用于给项目创建一个sql控制台"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency 'rails', '>= 4.0', '< 5.2'

  s.add_development_dependency "sqlite3"
end
