#Exceeds Expectations Submission

require_relative 'lesson'

class SystemCheck < Lesson

  attr_reader :due_date, :submissions

  def initialize(name, due_date, body)
    @name, @due_date, @body = name, due_date, body
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    total = 0.0
    @submissions.each {|submission| total += submission.grade}
    total / @submissions.length
  end

  def submittable?
    !super
  end

  def did_student_complete_system_check?(student)
    @submissions.each {|submission| return true if submission.student == student}
    return false
  end

end
