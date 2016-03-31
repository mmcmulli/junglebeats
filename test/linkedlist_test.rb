gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/linked_list"
require "../lib/node"

class LinkedListTest < Minitest::Test

  def test_new_list_created_head_points_nil
    list = LinkedList.new
    assert_equal nil, list.head.next_node
    assert_equal Node, list.head.class
  end

  def test_tail_method_is_last_node_with_next_nod_eql_nil
    list = LinkedList.new("deep")
    list.append("dop")
    assert_equal "dop", list.tail.data
    refute list.tail.next_node
  end

  def test_it_can_append_one_piece_of_data
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.head.next_node.data
  end

  def test_it_can_append_one_piece_of_data_next_node_eql_nil
    list = LinkedList.new
    list.append("doop")
    refute list.next_node, "hey i should be nil"
  end

  def test_it_can_count_one_item
    skip
    list = LinkedList.new
    list.append("deep")
    assert_equal 1, list.count
  end

  def test_has_a_string_representation_of_list
    skip
    list = LinkedList.new("doop")
    list.append("deep")
    assert_equal "doop deep", list.to_string
  end

  def test_it_can_append_and_count_multiple_pieces_of_data
    skip
    list = LinkedList.new("doop")
    list.append("deep")
    list.append("dooooop")
    assert_equal 3, list.count
  end

  def test_it_can_append_more_than_one_piece_of_data
    skip
    list = LinkedList.new("doop")
    assert_equal "doop", list.tail.data
    list.append("deep")
    assert_equal "doop", list.head.data
    assert_equal "deep", list.head.next_node.data
    list.append("deep")
    assert_equal "deep", list.head.next_node.next_node.data
  end

  def test_it_can_prepend_an_item
    skip
    list = LinedList.new
    list.prepend("dop")
    assert_equal "dop", list.data
  end

  def test_it_can_insert_node
    skip
    list = LinedList.new("doop")
    list.insert(1, "woo")
    assert_equal "woo", list.head.next_node.data
    list.insert(2, "wee")
    assert_equal "wee", list.head.next_node.next_node.data
  end

  def test_string_representation_can_read_multiple_data_points
    skip
    list = LinkedList.new("doop")
    assert_equal "doop", list.head.data.to_string
    list.append("suu")
    assert_equal "doop, suu", list.head.data.to_string
  end

  def test_it_can_find_and_return_data_by_index
    skip
    list = LinkedList.new("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    assert_equal "woo shi shu", list.find(1, 3)
  end

  def test_list_knows_if_data_is_included
    skip
    list = LinkedList.new("deep")
    list.includes?("deep")
    assert "deep", "the list thinks deep is not included when it should be"
  end

  def test_list_can_pop_last_item_and_return_data
    skip
    list = LinkedList.new("doop")
    list.append("suu")
    list.pop
    assert_equal "suu", list.pop
  end

  def test_string_representation_exists_after_pop_activity
    skip
    list = LinkedList.new("doop")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    list.pop
    assert_equal "doop woo shi shu", list.head.next_node.data.to_string
  end

  # need to still add in a TON of edge cases

end
