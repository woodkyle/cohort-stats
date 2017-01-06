#Exceeds Expectations Submission

require 'lesson'

class Challenge < Lesson

  attr_reader :due_date

  def initialize(name, due_date, body)
    @name, @due_date, @body = name, due_date, body
  end

  def submittable?
    !super
  end

end
