$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "font_awesome_file_icons/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "font_awesome_file_icons"
  s.version     = FontAwesomeFileIcons::VERSION
  s.authors     = ["Igor Kasyanchuk"]
  s.email       = ["igorkasyanchuk@gmail.com"]
  s.homepage    = "https://github.com/igorkasyanchuk/font_awesome_file_icons"
  s.summary     = "Return font awesome icon based on filename."
  s.description = "Return font awesome icon based on filename."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"
  s.add_dependency "mimemagic"
  s.add_dependency "font-awesome-rails"

  s.add_development_dependency "sqlite3"
end
