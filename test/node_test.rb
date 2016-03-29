gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/node"

class Node_test < Minitest::Test

  def test_new_node_created
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_if_only_one_node_next_node_eql_nil
    node = Node.new("plop")
    node.next_node
    refute node.next_node #because next node set default to nil, use refute? or should i not set default?
  end

  def test_it_knows_what_is_in_next_node
    node = Node.new("plop")
    node.next_node
    refute node.next_node
  end

end
