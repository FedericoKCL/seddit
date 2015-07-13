require 'rails_helper'

RSpec.describe Subreddit, type: :model do
  context "When a subreddit is created" do 
    it "should succeed with valid data" do 
      sr = Subreddit.new(name: "subreddit", url: "pics", desc: "CATZZZZZ")
      expect(sr.valid?).to eq(true)
    end
  end
  context "When attempting to create an invalid subreddit" do 
    it "should fail with no name" do 
      sr = Subreddit.new(name:"", url:"pics", desc:"CATZZZ")
      expect(sr.valid?).to eq(false)
    end
    it "should fail with no url" do 
      sr = Subreddit.new(name:"subreddit", url:"", desc:"CATZZ")
      expect(sr.valid?).to eq(false)
    end
    it "should fail with no description" do 
      sr = Subreddit.new(name:"subreddit", url:"CATZZZ", desc:"")
      expect(sr.valid?).to eq(false)
    end
    it "should fail if the name is not unique" do 
      sr = Subreddit.new(name:"subreddit", url:"CAAATS", desc:"CATZZ")
      sr.save!
      sr2 = Subreddit.new(name:"subreddit", url:"CAATZ", desc:"MORE CAATZ")
      expect(sr2.valid?).to eq(false)
    end
    it "should fail if the url is not unique" do 
      sr = Subreddit.new(name:"pics", url:"CAATZ", desc:"CATZZ")
      sr.save!
      sr2 = Subreddit.new(name:"subreddit", url:"CAATZ", desc:"MORE CAATZ")
      expect(sr2.valid?).to eq(false)
    end
    it "should fail with an invalid url format" do
      sr = Subreddit.new(name: "random", url:"tydolla$ign", desc: "best rapper evar xD")
      expect(sr.valid?).to eq(false)
    end
  end
end
