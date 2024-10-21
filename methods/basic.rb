class BasicMethods
    # delete cookie modal
    def delete_modal
        sleep(3)
        @driver.execute_script('document.querySelector("#modal-root .cookie-consent .btn.btn--type_primary.btn--size_m").click()')
    end

    # access partial_url
    def jump_to(partial_url)
        @driver.navigate.to "https://www.timetravels.com/#{partial_url}"
    end

    # scroll
    def scroll(x, y)
        sleep(3)
        @driver.execute_script("window.scrollBy(#{x}, #{y})")
    end

    def click_element(class_name)
        element = @driver.find_element(class: class_name)
        element.click
    end

    def find_and_click_element(first_class, second_class)
        element = @driver.find_element(class: first_class)
        element.find_element(class: second_class).click
    end
    
    def click_first_card
        # click to see the detail page
        product_cards = @driver.find_elements(class: 'product-card')
        view_button = product_cards[0].find_element(class: "product-card__action")
        view_button.click
        sleep(3)
    end

    def click_availability(status)
        sidebar = @driver.find_element(class: 'catalog__sidebar')
        availability_filter = sidebar.find_element(:xpath, "//span[text() = 'Availability']")
        availability_filter.click
        sleep(3)

        radio_button = @driver.find_element(id: status)
        @driver.execute_script('arguments[0].click();', radio_button)
    end

    def rand_mail
        random_number = rand(1000)
        return 'bth.manami.testing' + random_number.to_s + '@ccmail.uk'
    end
end