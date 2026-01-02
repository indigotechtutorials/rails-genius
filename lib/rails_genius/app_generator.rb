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
      formatted_options[:type] = format_type
    end

    def run_rails_command
      puts "App options: #{formatted_options.to_json}"
      puts "🔥💎 Running rails generate command"
      system("rails new #{formatted_options[:name]} #{framework_command} #{template_command}")
    end

    def template_command
      case formatted_options[:type]
      when 'saas'
        path_to_saas_template = GITHUB_URL + "/templates/template.rb"
        "-m #{path_to_saas_template}"
      end
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

    def format_type
      type = app_options[:type]
      if ["saas"].include?(type)
        type
      else
        ''
      end
    end
  end
end