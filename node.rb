class Node

  attr_accessor :data, :next_node

  def initialize(data = nil, nextnode= nil)
    @data = data
    @next_node = nextnode
  end

end
