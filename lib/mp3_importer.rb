require_relative 'artist'
require_relative 'song'
require 'pry'

class MP3Importer

  attr_reader :path

  def initialize(file_path)
    @path = file_path
  end

  def files
    Dir.glob(path + "/*.mp3").map { |file| file.gsub(/.\/spec\/fixtures\/mp3s\//, "") }
  end

  def import
    files.each do |filename|
      Song.new_by_filename(filename)
      # binding.pry
    end

  end

end
