gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/letters_to_braille'

class LettersToBrailleTest < Minitest::Test
  def test_letters_to_braille_on_one_line
    letters_to_braille = LettersToBraille.new

    assert_equal ["0.", "..", ".."], letters_to_braille.braille_in_one_row("a")
    assert_equal ["0.", "0.", ".."], letters_to_braille.braille_in_one_row("b")
  end

  def test_multiple_letters
    letters_to_braille = LettersToBraille.new

    assert_equal [["0.", "..", ".."],["0.", "0.", ".."],["00", "..", ".."]], letters_to_braille.braille_in_one_row("abc")
  end

end
