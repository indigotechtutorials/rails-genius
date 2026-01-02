require 'rails'
require_relative "./rails_genius/app_generator"

module RailsGenius
  GITHUB_URL = 'https://github.com/indigotechtutorials/rails-genius'
  class << self
    attr_accessor :type
  end
end