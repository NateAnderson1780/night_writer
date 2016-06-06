gem 'minitest', '~> 5.0'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/night_writer'

class NightWriterTest < Minitest::Test
  def test_output_to_file
    night_writer = Nightwriter.new

    assert_equal 0.\n..\n.., night_writer.encode_to_braille("abc")

  end
