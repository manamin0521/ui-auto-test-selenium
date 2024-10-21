require './methods/search.rb'
class ConbiSearch < SearchMethods
  def execute
    jump_to("destinations/lapland.html")
    delete_modal
    scroll(0, 4700)
    sleep(5)
    click_availability('availability-on_sale')

    product_cards = @driver.find_elements(class: "product-card")
    
    # test
    partial_url = 'destinations/lapland.html'
    product_cards = @driver.find_elements(class: "product-card")
    if check_url(partial_url) && check_count(product_cards.size, 15)
      puts "ok"
    end

  ensure
    teardown
  end
end
