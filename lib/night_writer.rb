# require './lib/night_reader'
require './lib/letters_to_braille'
require 'pry'

class NightWriter
  attr_reader :reader

  def initialize
    @reader = File.new("data/message.txt")
  end

  def encode_file_to_braille
    # I wouldn't worry about testing this method
    # unless you get everything else done
    plain = reader.read
    braille = encode_to_braille(plain)

    write_encoded_braille_to_text_file(braille)
  end


  def encode_to_braille(input)
    braille_1 = LettersToBraille.new
    braille_1.braille_in_one_row(input)
    # binding.pry
    braille_1.braille_translation
  end

  def write_encoded_braille_to_text_file(braille)
    File.write("data/braille.txt", braille)
  end
end

# puts ARGV.inspect
new_night_writer = NightWriter.new
new_night_writer.encode_file_to_braille
