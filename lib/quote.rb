require_relative 'helper'

class Quote
  def self.find_quote
    api = 'https://type.fit/api/quotes'
    res = Request.new_request(api)
    rand_num = rand(res.length)
    res[rand_num]
  end
end