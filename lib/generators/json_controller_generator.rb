require 'generators/rspec'

class JsonControllerGenerator < Rails::Generators::NamedBase
  desc <<EOF
Stubs out a new controller with no views, assets, or helpers. Pass the
controller name, either CamelCased or under_scored, and a list of actions
as arguments.

To create a controller within a module, specify the controller name as a
path like 'parent_module/controller_name'.

This generates a controller class in app/controllers test framework generators.
EOF

  argument :actions, :type => :array, :default => [], :banner => "action action"
  check_class_collision :suffix => "Controller"
  source_root File.expand_path("../templates", __FILE__)

  def create_controller_files
    template 'controller.rb', File.join('app/controllers', class_path, "#{file_name}_controller.rb")
  end

  def add_routes
    actions.reverse.each do |action|
      route %{get "#{file_name}/#{action}"}
    end
  end

  hook_for :test_framework, :as => :controller
end
