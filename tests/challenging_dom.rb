require 'selenium-webdriver'

Selenium::WebDriver::Chrome.driver_path='/home/tester/tools/chromedriver/241/chromedriver'
driver = Selenium::WebDriver.for :chrome
driver.get "https://www.toolsqa.com/automation-practice-form/"


element = driver.find_element(:xpath, "//a[@href='http://toolsqa.com/automation-practice-form/']")
puts driver.current_url
# expect(true).to eq(driver.find_element(:xpath, "//a[@title='Automation Practice Form']"))

puts "Main page opened" if element.find_element(:xpath, "//a[@title='Automation Practice Form']")

# driver.find_element(:xpath, "//a[@href='http://toolsqa.com/automation-practice-table/']").click

# puts "Automation Practice Table page opened" if driver.find_element(:xpath, "//div[@class='page-title-head hgroup']/h1[text()='Automation Practice Table']")
# #puts "Main page opened" if driver.getCurrentUrl() == 'https://www.toolsqa.com/automation-practice-form/'

driver.close()
