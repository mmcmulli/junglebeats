gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require "../lib/node"
require "../lib/linked_list"

class JunglebeatsTest < Minitest::Test

  def test_can_append_beats
    jbeats = JungleBeats.new
    assert_equal "tee dee dee", jbeats.append("tee dee dee")
  end

  def test_can_play_beats
    jbeats = JungleBeats.new
    jbeats.append("tee dee deep")
    assert_equal jbeats.play, #????
  end

end



#edge cases There are a lot of words which aren't going to work for beats. Like Mississippi
#> jb.prepend("tee tee tee Mississippi") 3 # number of beats successfully inserted
# VALID beats tee dee deep bop boop la na
