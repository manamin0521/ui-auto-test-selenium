require './methods/basic.rb'
class TestMethods < BasicMethods
    def initialize(driver)
        @driver = driver
        @driver.manage.window.maximize
        @driver.manage.timeouts.implicit_wait = 10
    end

    def teardown
        @driver.quit
    end

    # check the correct url
    def check_url(partial_url)
        unless @driver.current_url.include?(partial_url)
            puts 'Unexpected URL.' + @driver.current_url
            return false
        else 
            return true
        end
    end

    # check the correct contents count
    def check_count(actual_number, expected_number)
        if actual_number != expected_number
            puts "it's " + actual_number.to_s + " elements"
            return false
        else 
            return true
        end
    end

    # check the correct text
    def check_text(actual_text, expected_text)
        if actual_text != expected_text
            puts "Unexpected URL. #{actual_text}"
            return false
        else 
            return true
        end
    end
end