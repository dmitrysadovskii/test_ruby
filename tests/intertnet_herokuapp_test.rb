require 'rubygems'
require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path='/home/tester/tools/chromedriver/241/chromedriver'
driver = Selenium::WebDriver.for :chrome
driver.get "https://the-internet.herokuapp.com/"

wait = Selenium::WebDriver::Wait.new(:timeout => 10)


# puts "Test passed" if wait.until {/The Internet/.match(driver.page_source)}

element = driver.find_element(:xpath, "//a[@href='/abtest']").click
title = driver.find_element(:xpath, "//h3")

puts "Page opened" if title.text == "A/B Test Variation 1"

# sleep 3

#puts "Page opened" if wait.until { driver.find_element(:xpath, "//h3")}

driver.close