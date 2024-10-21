require './methods/search.rb'
class UninameSearch < SearchMethods
  def execute
    jump_to("")
    delete_modal
    # search the university name
    search('bth')

    # test
    product_cards = @driver.find_elements(class: "product-card")
    partial_url = 'result/?q=bth'
    if check_count(product_cards.size, 1) && check_url(partial_url)
      puts 'ok'
    end
  ensure
    teardown
  end
end