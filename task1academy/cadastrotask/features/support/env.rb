require 'capybara'
require 'capybara/cucumber'
require 'faker'
require 'rspec'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
end

