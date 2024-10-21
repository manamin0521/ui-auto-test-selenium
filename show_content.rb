require './methods/search.rb'
class ShowContent < SearchMethods
  def execute
    jump_to("destinations/lapland.html?filters=%5B%22availability%22%2C%22on_sale%22%5D")
    delete_modal
    scroll(0, 4500)
    sleep(5)

    click_first_card

    # test
    title_element = @driver.find_element(class: "product-info__title")
    title = title_element.text
    expected_title = "adventure to Northern Lapland, Saariselkä from Helsinki and Tallinn - Early season edition"

    if check_text(title, expected_title)
      puts "ok"
    end
  ensure
    teardown
  end
end