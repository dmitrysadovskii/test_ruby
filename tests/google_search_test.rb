require 'rubygems'
require 'selenium-webdriver'
# require 'selenium/client'
require 'rspec'


Selenium::WebDriver::Chrome.driver_path='/home/tester/tools/chromedriver/241/chromedriver'
driver = Selenium::WebDriver.for :chrome
# driver.manage.timeouts.implicit_wait = 10
driver.get "http://google.com"

puts "Page title is #{driver.title}"
element = driver.find_element(:xpath, "//input[@name='q']")
element.send_keys "Cheese!"
element.submit



wait = Selenium::WebDriver::Wait.new(:timeout => 10)
wait.until { driver.title.downcase.start_with? "cheese!" }



puts "Page title is #{driver.title}"
# expect(driver.title).to eq("Cheese! - Поиск в Google")
# abort("ERROR: Page title is wrong!") if driver.title != "Cheese! - Поиск в Google"

driver.quit