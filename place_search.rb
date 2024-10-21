
require './methods/search.rb'
class PlaceSearch < SearchMethods
  def execute
    jump_to("")
    delete_modal

    # search the place name
    search('lapland')

    # test
    product_cards = @driver.find_elements(class: "product-card")
    partial_url = 'destinations/lapland.html'
    if check_url(partial_url) && check_count(product_cards.size, 18)
      puts "ok"
    end
  ensure
    teardown
  end
end