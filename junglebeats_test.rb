gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './node'
require './linked_list'

class Junglebeats_test < Minitest::Test

  def test_new_node_created
    node = Node.new("plop")
    assert_equal "plop", node.data
  end

  def test_it_knows_what_is_in_next_node
    node = Node.new("plop")
    node.next_node
    refute node.next_node
  end

  def test_it_can_make_new_list

  end

  def test_list_is_empty_by_default
    list = LinkedList.new
    assert list.head
  end

  def test_it_can_add_one_piece_of_data_to_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_when_one_item_head_next_node_is_empty

  end

  def test_it_knows_how_many_items_are_in_list

  end

  def test_has_a_string_representation

  end

end
