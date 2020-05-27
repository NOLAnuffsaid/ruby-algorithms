# frozen_string_literal: true

require 'algorithms'
require 'rspec'
require 'rantly/rspec_extensions'

def gen_array
  property_of do
    Rantly do
      array(range(3, 25)) { integer(5..25) }
    end
  end
end

RSpec.describe 'Binary Search' do
  it 'should find elements within its array' do
    gen_array.check(1000) do |a|
      el = a.sample
      sorted_array = a.sort
      sub = Algorithms::Searcher.new.search(sorted_array, el, :binary)

      expect(sub).to eq el
    end
  end

  it 'should recursively find element within array' do
    gen_array.check(1000) do |a|
      el = a.sample
      sorted_array = a.sort
      sub = Algorithms::Searcher.new.search(sorted_array, el, :binary_recur)

      expect(sub).to eq el
    end
  end
end
