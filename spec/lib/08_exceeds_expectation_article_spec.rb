#Exceeds Expectations Submission

describe Article do

  describe ".new" do
    it "takes name and body as strings" do
      article = Article.new("Best Article Ever", "Body of Text")
      expect(article).to be_a(Article)
    end
  end

  let(:article){Article.new("New Article", "Body of Text")}

  describe "name" do
    it "is a string" do
      expect(article.name).to be_a(String)
    end

    it "can access name" do
      expect(article.name).to eq("New Article")
    end
  end

  describe "body" do
    it "is a string" do
      expect(article.body).to be_a(String)
    end

    it "can access body" do
      expect(article.body).to eq("Body of Text")
    end
  end

  describe "submittable" do
    it "should NOT be submittable" do
      expect(article.submittable?).to eq(false)
    end
  end

end
