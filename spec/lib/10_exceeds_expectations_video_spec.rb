#Exceeds Expectations Submission

describe Video do

  describe ".new" do
    it "takes name and body as strings" do
      video = Video.new("Best Video Ever", "Body of Text", "www.youtube.com")
      expect(video).to be_a(Video)
    end
  end

  let(:video){Video.new("New Video", "Body of Text", "www.youtube.com")}

  describe "name" do
    it "is a string" do
      expect(video.name).to be_a(String)
    end

    it "can access name" do
      expect(video.name).to eq("New Video")
    end
  end

  describe "body" do
    it "is a string" do
      expect(video.body).to be_a(String)
    end

    it "can access body" do
      expect(video.body).to eq("Body of Text")
    end
  end

  describe "url" do
    it "expects url to be a string" do
      expect(video.url).to be_a(String)
    end

    it "can access url" do
      expect(video.url).to eq("www.youtube.com")
    end

    it "cannot write to url" do
      expect{video.url = "www.google.com"}.to raise_error(NoMethodError)
    end
  end

  describe "submittable" do
    it "should NOT be submittable" do
      expect(video.submittable?).to eq(false)
    end
  end

end
