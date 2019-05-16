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

 
end
