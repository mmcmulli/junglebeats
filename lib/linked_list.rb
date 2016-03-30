require "../lib/node"

class LinkedList

  attr_accessor :head, :tail

  def initialize(head = nil)
    @head = head
    @count = 0
  end


  def append(data)
    if @head == nil #nothing in list
      @head = Node.new(data, nil) #head is new node with nill pointer
    else
      new_node = Node.new(data, nil) #something in list already
      @next_node = new_node          #make new node, with next node pointer to it
    end  ### I can only hold 2 items...
  end    # do I need a tail

  def count
    if @head == nil
      @count
    else
      @count +=1
  end
end

  def to_string
   "doop"
  end
end

require 'pry';binding.pry
