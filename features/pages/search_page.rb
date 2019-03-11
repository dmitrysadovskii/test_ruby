class SearchPage < SitePrism::Page

  element :input_field, :xpath, "//input[@name='q']"
  element :button_search, :xpath, "//div[@jsname='VlcLAe']//input[@name='btnK']"

end