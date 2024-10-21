require './methods/book.rb'
class BookNextNameFail < Book
  def execute 
    book_first_page

    find_and_click_element('checkout-sign-in__customer-type', 'btn--type_primary')
    lastname = 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'
    enter_informations('aaaaa', lastname, rand_mail);

    # save
    find_and_click_element('form-submit', 'btn--type_primary')

    # test
    error_message = @driver.find_element(class: 'notice--type_error')
    if check_text(error_message.text, 'Last Name is not valid!')
      puts 'ok'
    end

  ensure
    teardown
  end
end