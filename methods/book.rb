require 'selenium-webdriver'
require './methods/test.rb'
class BookMethods < TestMethods
    # select price
    def select_value(value)
        price_categories = @driver.find_elements(class_name: 'price-category')
        select = Selenium::WebDriver::Support::Select.new(price_categories[0].find_element(class: 'form-select'))
        select.select_by(:value, value)
    end

    def enter_informations(firstname, lastname, mail)
        # enter the customer information
        form = @driver.find_element(class: 'auth-form-register')
        form.find_element(name: "firstname").send_keys(firstname)
        form.find_element(name: "lastname").send_keys(lastname)
        form.find_element(name: "email").send_keys(mail)
        form.find_element(name: "password").send_keys('s4w2/F_BH*.4iZy')
    end

end