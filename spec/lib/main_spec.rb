require 'spec_helper'

describe '#frequency' do
  it 'returns list with the unique elements of the argument list in order of frequency' do
    expect(frequency(['a', 'b', 'b', 'c', 'b', 'a'])).to eq ['b', 'a', 'c']
    expect(frequency(['a', 'b', 'a'])).to eq ['a', 'b']
    expect(frequency(['c', 'c', 'c'])).to eq ['c']
  end

  it 'returns empty array' do
    expect(frequency([])).to eq []
  end
end

describe '#flatten' do
  it 'returns an array without nesting' do
    arr = ['a', ['b', 'b'], [['c', ['b']], 'a']]
    expected = ['a', 'b', 'b', 'c', 'b', 'a']
    expect(flatten(arr)).to eq expected
  end
end
