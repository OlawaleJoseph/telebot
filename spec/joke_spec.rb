require_relative '../lib/joke'

describe Joke do
  let(:joke) { Joke.new }

  it 'should create a joke instance' do
    expect(joke).to be_an_instance_of Joke
  end

  it 'should return a joke' do
    res = joke.display_joke('mike')
    expect(res).to be_a String
  end

  it 'should return a joke that contains the name given' do
    name = 'jordan'
    res = joke.display_joke(name)
    expect((res.include? name)).to be true
  end
end
