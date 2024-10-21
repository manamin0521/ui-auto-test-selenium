require './methods/book.rb'
class BookNext < Book
  def execute
    book_first_page

    # click the new customer button
    find_and_click_element('checkout-sign-in__customer-type', 'btn--type_primary')

    enter_informations('Test', 'Hoge', rand_mail)

    # click the save and continue button
    find_and_click_element('form-submit', 'btn--type_primary')

    puts "ok"

  ensure
    teardown
  end
end