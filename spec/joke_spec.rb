require_relative '../lib/joke'

describe Joke do
  it 'should return a joke' do
    res = Joke.get_joke('mike')
    expect(res).to be_a String
  end

  it 'should return a joke that contains the name given' do
    name = 'jordan'
    res = Joke.get_joke(name)
    expect((res.include? name)).to be true
  end
end
