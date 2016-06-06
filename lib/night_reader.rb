require './lib/night_writer'

class NightReader
  def read
    filename = ARGV[0]
    File.read(filename)
  end
end
