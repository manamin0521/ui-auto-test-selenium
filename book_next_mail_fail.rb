require './methods/book.rb'
class BookNextMailFail < Book
  def execute
    book_first_page

    # click the new customer button 
    find_and_click_element('checkout-sign-in__customer-type', 'btn--type_primary')

    mail = 'bth.manami.testing@ccmail.uk'
    enter_informations('Test', 'Hoge', mail);

    # click the save and continue button
    find_and_click_element('form-submit', 'btn--type_primary')

    # test
    error_message = @driver.find_element(class: 'notice--type_error')
    unless error_message.text == 'A customer with the same email address already exists in an associated website.'
      puts 'title text is ' + error_message.text
    else
      puts "ok"
    end

  ensure
    teardown
  end
end
