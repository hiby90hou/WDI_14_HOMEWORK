require_relative 'queens'
require 'pry'


queens = Queens.new(:white => [2, 3], :black => [5, 6])

binding.pry
puts "end"