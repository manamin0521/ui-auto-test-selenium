require './methods/search.rb'
class WaitList < SearchMethods
  def execute
    jump_to("destinations/lapland.html")
    delete_modal
    scroll(0, 4700)
    sleep(5)
    click_availability('availability-not_on_sale_yet')

    # click to see the detail page
    click_first_card

    # enter the customer information
    sleep(5)
    click_element('product-buy-zone__action')

    form = @driver.find_element(class: 'product-buy-zone__form')
    form.find_element(name: "email").send_keys(rand_mail)

    click_element("form-submit")

    puts "ok"

  ensure
    teardown
  end
end