require './enumerables/enumerable.rb'

RSpec.describe Enumerable do
  describe '#each' do
    it 'expects a block' do
      expect([1, 3, 4].my_each { |i| i }).to eql([1, 3, 4])
    end

    it 'expects a block' do
      expect({ a: 1, b: 3, c: 4 }.my_each { |key| key }).to eql(a: 1, b: 3, c: 4)
    end
  end

  describe '#my_each_with_index' do
    it 'loops over an array eith' do
      expect([1, 3, 4].my_each_with_index { |_item, index| index }).to eql([1, 3, 4])
    end
    it 'loops over a hash ' do
      expect({ a: 1, b: 3, c: 4 }.my_each_with_index { |_key, _value, index| index }).to eql(a: 1, b: 3, c: 4)
    end
  end

  describe '#my_select' do
    it 'filters elements in an array' do
      expect([1, 3, 4].my_select { |x| x > 2 }).to eql([3, 4])
    end
    it 'filters elements in an hash' do
      expect({ a: 1, b: 3, c: 4 }.my_select { |_key, value| value > 2 }).to eql(b: 3, c: 4)
    end
  end

  describe '#my_all' do
    it 'returns true if all elements are true given a condition' do
      expect([1, 3, 4].my_all? { |x| x > 0 }).to eql(true)
    end
    it 'returns true if all key-value pairs in the hash are true given a condition' do
      expect({ a: 1, b: 3, c: 4, d: 4 }.my_all? { |_key, value| value > 0 }).to eql(true)
    end
  end

  
end
