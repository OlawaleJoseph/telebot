require_relative '../lib/quote'

describe Quote do
  it 'should return a joke' do
    res = Quote.find_quote
    expect(res).to be_a Hash
  end

  it 'should return a quote with text as string' do
    res = Quote.find_quote
    expect((res['text'])).to be_a String
  end
end
