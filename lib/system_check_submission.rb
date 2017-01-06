#Exceeds Expectations Submission

class SystemCheckSubmission

  attr_reader :solution, :student, :grade

  def initialize(solution, student)
    @solution, @student = solution, student
    @grade = nil
  end

  def assign_grade(grade)
    @grade = grade
    raise InvalidGradeError if @grade < 0 || @grade > 3
  end

  def graded?
    !@grade.nil?
  end

end

class InvalidGradeError < StandardError
end
