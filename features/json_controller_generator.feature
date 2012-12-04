Feature:
  In order to easily generate controllers for a JSON API
  As a user of Rails3 and json_controller_generator
  I would like to use json_controller_generator generators.

  Scenario: The json_controller_generator generators create a controller with specs
    When I successfully run `bundle exec rails new testapp`
    And I cd to "testapp"
    And I add "json_controller_generator" from this project as a dependency
    When I successfully run `bundle install`
    And I successfully run `bundle exec rails generate json_controller posts index`
    Then the output should contain "app/controllers/posts_controller.rb"
    And the file "app/controllers/posts_controller.rb" should contain "def index"
