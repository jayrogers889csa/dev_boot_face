require 'spec_helper'

describe Post do

  context "has attributes" do 
    it "should have attribute content" do
      first_post = Post.new(content: "Lorum Ipsum etc etc")
      expect(first_post.content).to eq("Lorum Ipsum etc etc")
    end
  end

end
