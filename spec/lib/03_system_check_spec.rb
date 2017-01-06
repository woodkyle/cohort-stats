#Exceeds Expectations Submission

require "spec_helper"

describe SystemCheck do
  describe ".new" do
    it "takes a name and due date as arguments" do
      due = Date.parse("2015/08/14")
      system_check = SystemCheck.new("Grocery List in Sinatra", due, "Body of Text")
      expect(system_check).to be_a(SystemCheck)
    end
  end

  let(:system_check) do
    due = Date.parse("2015/08/21")
    SystemCheck.new("Grocery List with AJAX", due, "Body of Text")
  end

  describe "#body" do
    it "has instructions for assignment in body" do
      expect(system_check.body).to eq("Body of Text")
    end
  end

  describe "#submissions" do
    it "is initialized as an empty array" do
      expect(system_check.submissions).to eq([])
    end
  end

  describe "#add_submission" do
    it "takes in a Submission object and stores it" do
      student = Student.new("Jane Smith", "jane.smith@gmail.com")
      solution = <<-SOLUTION
        require "sinatra"
        get "/"
          groceries = ["milk", "eggs", "bread"]
          erb :index, locals: { groceries: groceries }
        end
      SOLUTION
      submission = SystemCheckSubmission.new(solution, student)

      system_check.add_submission(submission)
      expect(system_check.submissions).to include(submission)
    end
  end

  describe "submittable?" do
    it "checks to see if SystemCheck is able to submit" do
      expect(system_check.submittable?).to eq(true)
    end
  end

  
end
