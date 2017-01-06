#Exceeds Expectations Submission

require 'spec_helper'

describe Challenge do

  describe ".new" do
    it "takes name, due_date, and body as arguments" do
      challenge = Challenge.new("Super Hard Challenge", Date.parse("2015/08/10"), "Body of Text")
      expect(challenge).to be_a(Challenge)
    end
  end

  let(:challenge) {Challenge.new("Super Hard Challenge", Date.parse("2015/08/10"), "Body of Text")}

  describe "#name" do
    it "has a reader for a name" do
      expect(challenge.name).to eq ("Super Hard Challenge")
    end
  end

  describe "#body" do
    it "has a body of text" do
      expect(challenge.body).to eq("Body of Text")
    end
  end

  describe "submittable" do
    it "should be submittable" do
      expect(challenge.submittable?).to eq(true)
    end
  end

end
