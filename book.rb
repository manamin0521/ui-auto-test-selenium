require './methods/book.rb'
class Book < BookMethods
  def book_first_page
    jump_to("destinations/lapland.html?filters=%5B%22availability%22%2C%22on_sale%22%5D")
    delete_modal
    scroll(0,400)
    click_first_card
    click_element('btn--type_primary')
    select_value(1.to_s)
    click_element('checkout__nextButton')
  end

  def execute
    book_first_page

    # test
    if check_url("checkout/details")
      puts "ok"
    end
  ensure
    teardown
  end
end