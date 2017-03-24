require 'capybara/rspec'
require 'capybara/dsl'

RSpec.configure do |config|

  config.include Capybara::DSL

  Capybara.register_driver :chrome do |app|
    Capybara::Selenium::Driver.new(app, :browser => :chrome)
  end

  Capybara.javascript_driver = :chrome

  Capybara.configure do |config|
    config.run_server = false
    config.default_driver = :selenium
    config.app_host = 'localhost:3000'
    config.app = "SAMPLE APP"
  end
end
