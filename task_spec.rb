require 'rspec'
require_relative 'task'

describe String do
  test_str = task.new('218')
  it 'correctly transform array into new map' do
    expect(test_str.row(%w[2 1 8])).to eq '121118'
  end
  it 'change string to a new string' do
    start_str = test_str.str
    test_str.next_str
    expect(start_str).not eq test_str.str
  end
end