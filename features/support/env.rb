require 'rubygems'
require 'selenium-webdriver'
# require 'selenium/client'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'
require 'capybara/cucumber'
require 'cucumber'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, :driver_path => "/home/tester/tools/chromedriver/241/chromedriver")
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :selenium
  config.default_selector = :xpath
end

include RSpec::Matchers
include Capybara::DSL