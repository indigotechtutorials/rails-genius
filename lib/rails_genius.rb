require 'rails'
require_relative "./rails_genius/app_generator"

module RailsGenius
  GITHUB_URL = 'https://raw.githubusercontent.com/indigotechtutorials/rails-genius/refs/heads/main/'
  class << self
    attr_accessor :type
  end
end