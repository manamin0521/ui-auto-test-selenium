require './methods/search.rb'
class SearchJs < SearchMethods

  def execute
    jump_to("")
    delete_modal

    # search the place
    search('<script>alert("Invalid search");</script>')

    # test
    partial_url = '%3Cscript%3'
    if check_url(partial_url)
      puts "ok"
    end

  ensure
    teardown
  end
end