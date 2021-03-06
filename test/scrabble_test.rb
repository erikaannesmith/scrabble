gem 'minitest'
require_relative '../lib/scrabble'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class ScrabbleTest < Minitest::Test
  def test_it_can_score_a_single_letter
    assert_equal 1, Scrabble.new.score("a")

    assert_equal 4, Scrabble.new.score("f")
  end

  def test_it_can_score_an_empty_word
    assert_equal 0, Scrabble.new.score("")
  end

  def test_it_can_score_nil
    assert_equal 0, Scrabble.new.score(nil)
  end

  def test_it_can_score_with_multipliers
    assert_equal 9, Scrabble.new.score_with_multipliers('hello', [1,2,1,1,1])
    assert_equal 18, Scrabble.new.score_with_multipliers('hello', [1,2,1,1,1], 2)
  end
end
