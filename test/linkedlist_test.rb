gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/linked_list"

class LinkedList_test < Minitest::Test

  def test_new_list_created
    list = LinkedList.new
  end

  def test_list_is_empty_by_default
    list = LinkedList.new
  end

  def test_it_can_add_one_piece_of_data_to_list
    list = LinkedList.new
    assert_equal "doop", list.append("doop")
  end

  def test_has_a_string_representation

  end

end
