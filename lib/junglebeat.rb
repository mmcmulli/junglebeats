require_relative "linked_list"
require 'pry'

class JungleBeat

  attr_accessor :linked_list

  def initialize
    @linked_list = LinkedList.new
  end

  def play
    beats = linked_list.to_string
    `say -r 500 -v Boing #{data}`  # r is rate, v is voice
  end

  def append(data)
    split = data.split('')
    #still need each do block and return string?
    #one node created with array? deep bop dop
    #splitting the string before linked list
    #results in three nodes appended
  end


end

# binding.pry
