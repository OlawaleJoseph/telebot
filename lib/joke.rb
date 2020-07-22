require_relative 'helper'

class Joke
  def self.get_joke(name)
    api = "https://api.chucknorris.io/jokes/random?name=#{name}"
    res = Request.new_request(api)
    res['value']
  end
end
