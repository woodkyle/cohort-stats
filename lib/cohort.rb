#Exceeds Expectations Submission

class Cohort

  attr_reader :title, :start_date, :end_date,
                :students, :system_checks, :career_day

  def initialize(title, start_date, end_date)
    @title, @start_date, @end_date = title, start_date, end_date
    @students, @system_checks = [], []
    @career_day = @end_date + 4
  end

  def enroll(student)
    @students << student
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    output = " "
    output << @title
    @students.each do |student|
      output << student.name
      output << student.email
    end
    output
  end

  def system_check_completed?(system_check)
    all_complete = true
    @students.each do |student|
      all_complete = false if !system_check.did_student_complete_system_check?(student)
    end
    all_complete
  end

end
