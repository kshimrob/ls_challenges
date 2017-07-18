require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use!

require_relative 'odd_words'

class OddWordsTest < Minitest::Test
  def test_five_words
    assert_equal 'whats eht matter htiw kansas.', OddWords.new('whats the matter with kansas.').odds_reverse
  end

  def test_six_words
    # skip
    assert_equal 'whats eht matter htiw kansas nuh.', OddWords.new('whats the matter with kansas hun.').odds_reverse
  end

  def test_one_word
    # skip
    assert_equal 'botriot.', OddWords.new('botriot.').odds_reverse
  end

  def test_multiple_spaces
    # skip
    assert_equal 'whats eht matter htiw kansas.', OddWords.new('whats  the matter   with kansas   .').odds_reverse
  end

  def test_no_period
    assert_equal 'hey uoy', OddWords.new('hey you').odds_reverse
  end
end