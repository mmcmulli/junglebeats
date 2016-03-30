gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/linked_list"
require "../lib/node"

class LinkedListTest < Minitest::Test

  def test_new_list_created_head_is_empty_by_default
    list = LinkedList.new
    refute list.head
  end


  def test_it_can_append_one_piece_of_data_to_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end


  def test_if_only_one_node_next_node_points_to_nil ### ????
    skip
    list = LinkedList.new
    refute list.head.next_node
  end

  def test_it_counts_one_piece_of_data
    list = LinkedList.new
    assert_equal 1, list.count
  end


  def test_has_a_string_representation_of_list
    list = LinkedList.new
    assert_equal "doop", list.to_string
  end

  def test_it_can_append_more_than_one_piece_of_data
    skip
    list = LinkedList.new
    list.head
    list.append("doop")
    list.head
    list.head.next_node
    list.append("deep")
    list.head.next_node
    assert_equal ###### putting count sting???
end

  def test_it_can_count_multiple_additions
    list = LinkedList.new

  end

end
