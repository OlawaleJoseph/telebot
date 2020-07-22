require_relative 'helper'

class Quote
  def initialize
    @quote = {}
  end

  private

  attr_accessor :quote

  def find_quote
    api = 'https://type.fit/api/quotes'
    res = Request.new_request(api)
    @quote = res.sample
  end

  public

  def display_quote
    find_quote
    quote
  end
end
