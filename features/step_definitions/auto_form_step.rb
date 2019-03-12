Given(/^Main Page "(.*)"$/) do |value|
  visit value
end

When(/^Click on the link$/) do

  pag = AuotForm.new
  pag.wait_until_partial_link_visible(wait: 10)
  pag.partial_link.click
end

Then(/^Check open page "(.*)"$/) do |value|
  #puts (page.current_url)
  expect(page.current_url).to eq(value)
end

When(/^Click on the link1$/) do
  pag = AuotForm.new
  pag.wait_until_link_test_visible(wait:3)
  pag.link_test.click
end

Then(/^Check open page1 "(.*)"$/) do |value|
  expect(page.current_url).to eq(value)
end

# test_3
When(/^input name "(.*)"$/) do |value|
   pag = AuotForm.new
   pag.wait_until_link_test_visible(wait:3)
   fill_in('firstname', with: value)
 # pag.name_field.set value
end


Then(/^Check name "(.*)" in the field$/) do |value|
  expect(find_field('firstname').value).to eq(value)
end

# test_4
When(/^input last name "(.*)"$/) do |value|
  pag = AuotForm.new
  pag.wait_until_link_test_visible(wait: 3)
  fill_in('lastname', with: value)
end

Then(/^Check last name "(.*)" in the field$/) do |value|
  expect(find_field('lastname').value).to eq(value)
end

# test_5
When(/^click on the Male radio button$/) do

  pag = AuotForm.new
  pag.wait_until_link_test_visible(wait:3)
  page.choose(option: 'Male')
  #pag.male_radio.click
  #page.choose('sex-0', allow_label_click: true)
  #page.choose('sex-1', allow_label_click: true)
end

Then(/^Check that male radio button selected$/) do
  pag = AuotForm.new
  expect(pag.male_radio.checked?).to eq(true)
end

# Then(/^Check that female radio button doesn't selected$/) do
#   expect(find_field('sex-1').checked?).to eq(false)
# end

#test_6

When(/^input current date$/) do
  page = AuotForm.new
  page.wait_until_male_radio_visible(wait: 20)
  fill_in('datepicker', with: Date.today.strftime('%Y-%m-%d'))
end

Then(/^Check that in field current date$/) do
  expect(find_field('datepicker').value).to eq(Date.today.strftime('%Y-%m-%d'))
end

#test_7
#
When(/^Select checkbox Manual Tester$/) do
  find(:xpath, "//input[@id='profession-0']").set(true)
end

Then(/^Check checkbox 1 selected$/) do |arg|
  expect(page).to have_field('profession-0', checked: true)
end

Then(/^Check that checkbox 2 unselected$/) do |arg|
  expect(page).to have_checked_field('profession-1')
end


# test_8

Given(/^Table page "(.*)"$/) do |value|
  visit value
end


When(/^3-rd element searched$/) do
  #site-prism
  pag = AuotForm.new
  puts pag.col_names[3].text
  # #capybara
  # all(xpath)
  puts all(:xpath, "//th[@scope='col']")[3].text
  #  puts page.should have_xpath("(//th[@scope='col'])", :count => 7)
    # page.assert_selector()
  # row_count_on_page = page.find(:xpath, "(//th[@scope='col'])")
  # puts row_count_on_page
end

