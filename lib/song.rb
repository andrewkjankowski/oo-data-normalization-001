require 'tempfile'

class Song
  # code goes here
  attr_accessor :title, :artist

  def initialize

  end

  def slugify
    file_prefix = @title.downcase.gsub(" ", "_")
    file = Tempfile.new([file_prefix, ".txt"], "tmp")
    file.write("#{@artist.name} - #{@title}")
    file.close
  end
end
