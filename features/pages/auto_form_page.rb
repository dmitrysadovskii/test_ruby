class AuotForm < SitePrism::Page

  element :partial_link,  :xpath, "//a[@href='http://toolsqa.com/automation-practice-form/']"
  element :link_test, :xpath, "//a[@href='http://toolsqa.com/automation-practice-table/']"
  element :name_field, :xpath, "//input[@name='firstname']"
  element :male_radio, :xpath, "//input[@id='sex-0']"
  element :manual_checkbox, :xpath, "//input[@id='profession-0']"
  elements :col_names, :xpath, "//th[@scope='col']"
end