gem "rails_genius"
gem "devise"
gem "stripe"

insert_into_file "app/controllers/application_controller.rb", before: "\nend" do
  "include RailsGenius::Saas::Helpers"
end

copy_file "config/rails_genius.rb", "config/initializers/rails_genius.rb"

generate :devise, :install
generate :devise, "model", "user"

generate :controller, :pages, "landing_page about"
route "root 'pages#landing_page'"