#Exceeds Expectations Submission

require 'lesson'

class Video < Lesson

  attr_reader :url

  def initialize(name, body, url)
    @name, @body, @url = name, body, url
  end

end
