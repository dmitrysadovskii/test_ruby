Given(/^Login google$/) do
  visit "http://google.com"
end

Given(/^Login "(.*)"$/) do |value|
  visit value
end

When(/^Input in search field "([^"]*)"$/) do |value|
  pageG = SearchPage.new
  pageG.wait_until_input_field_visible(wait: 10)
  pageG.input_field.set value
end

When(/^Click submit button$/) do
  pageG = SearchPage.new
  pageG.wait_until_button_search_visible(wait: 10)
  pageG.button_search.click
end

Then(/^Check page title "(.*)"$/) do |value|
  expect(page.title).to eq(value)
end

