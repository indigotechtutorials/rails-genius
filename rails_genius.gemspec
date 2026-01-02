Gem::Specification.new do |s|
  s.name        = "rails_genius"
  s.version     = "0.0.0"
  s.summary     = "Free starter templates for you're rails app"
  s.description = "Generate a great starter project for your next rails app"
  s.authors     = ["Indigo Tech"]
  s.email       = "indigo@tech.tut"
  s.files       = ["lib/rails_genius.rb"]
  s.homepage    =
    "https://rubygems.org/gems/rails_genius"
  s.license       = "MIT"
  s.executables << "getrich"
  s.add_dependency('thor', '1.4.0')
  s.add_dependency('rails', '8.0.4')
  s.add_dependency('pry', '0.16.0')
end