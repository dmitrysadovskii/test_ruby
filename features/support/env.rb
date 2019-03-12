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

driver_path = "/home/tester/tools/chromedriver/241/chromedriver"

Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome, :driver_path => driver_path )
end

Capybara.register_driver :headless_chrome do |app|
  capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
      chromeOptions: { args: %w(headless disable-gpu) }
  )

  Capybara::Selenium::Driver.new app,
                                 browser: :chrome, :driver_path => driver_path,
                                 desired_capabilities: capabilities
end

Capybara.configure do |config|
  config.default_max_wait_time = 10 # seconds
  config.default_driver = :headless_chrome
  config.default_selector = :xpath
end

include RSpec::Matchers
include Capybara::DSL