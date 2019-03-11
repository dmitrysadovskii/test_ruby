require 'rubygems'
require 'selenium-webdriver'
# require 'selenium/client'
require 'rspec'
require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec'

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



visit "http://google.com"
find("//input[@name='q']").send_keys "cheese!"
find("//div[@jsname='VlcLAe']//input[@name='btnK']").click
expect(page.title).to eq("cheese! - Поcиск в Google")



# Selenium::WebDriver::Chrome.driver_path='/home/tester/tools/chromedriver/241/chromedriver'
# driver = Selenium::WebDriver.for :chrome
# # driver.manage.timeouts.implicit_wait = 10
# driver.get "http://google.com"
#
# puts "Page title is #{driver.title}"
# element = driver.find_element(:xpath, "//input[@name='q']")
# element.send_keys "Cheese!"
# element.submit
#
#
# wait = Selenium::WebDriver::Wait.new(:timeout => 10)
# wait.until {driver.title.downcase.start_with? "cheese!"}
#
#
# puts "Page title is #{driver.title}"
# # expect(driver.title).to eq("Cheese! - Поиск в Google")
# # abort("ERROR: Page title is wrong!") if driver.title != "Cheese! - Поиск в Google"
#
# driver.quit