module RailsGenius
  class AppGenerator
    attr_reader :app_options, :formatted_options
    def initialize(app_options)
      @app_options = app_options
      @formatted_options = {}
    end

    def call
      process_options
      run_rails_command
    end
  private

    def process_options
      formatted_options[:name] = format_name
      formatted_options[:framework] = format_framework
    end

    def run_rails_command
      puts "App options: #{formatted_options.to_json}"
      puts "🔥💎 Running rails generate command"
      system("rails new #{formatted_options[:name]} #{framework_command}")
    end

    def framework_command
      if formatted_options[:framework]
        "-c #{formatted_options[:framework]}"
      end
    end
    
    def format_name
      name = app_options[:name]
      name.split(/\s/).join("")
    end

    def format_framework
      framework = app_options[:framework]
      if ["tailwind", "bootstrap"].include?(framework)
        framework
      else
        ''
      end
    end
  end
end