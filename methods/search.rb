require './methods/test.rb'
class SearchMethods < TestMethods
    def search(keyword)
        element = @driver.find_element(class: "search button").click
        query = @driver.find_element(:name, 'q')
        query.send_keys(keyword)
        query.submit
        sleep(3)
    end
end