require 'selenium-webdriver'
require 'benchmark'
require './uniname_search.rb'
require './place_search.rb'
require './conbi_search.rb'
require './show_content.rb'
require './wait_list.rb'
require './book.rb'
require './book_next.rb'
require './book_next_mail_fail.rb'
require './book_next_name_fail.rb'
require './search_js.rb'

class_names = [
  UninameSearch,
  PlaceSearch,
  ConbiSearch,
  ShowContent,
  WaitList,
  Book,
  BookNext,
  BookNextMailFail,
  BookNextNameFail,
  SearchJs
]

def run_test(class_name)
  begin
    driver = Selenium::WebDriver.for :chrome
    test = class_name.new(driver)
    test.execute
  rescue Exception => e
    puts "Error in test #{class_name.to_s}: #{e.message}"
  end
end

class_names.each do |class_name|
  puts "## #{class_name.to_s}"

  result = Benchmark.realtime do
    run_test(class_name)
  end

  puts "time #{result}s"
end