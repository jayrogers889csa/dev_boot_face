require 'rspec'
require 'spec_helper'

describe PostsController do
  let(:post) {Post.new(content: "Here's my post!", author: "Steve Dave")}

  it "has content" do
    post.content { should exist }
  end

  it "has author" do
    expect(post.author).to eq "Steve Dave"
  end

  # describe "POST /index"
  # context "when creating a new post" do
  #   it "persists the post to the database" do
  #     mock_post = double(:post)
  #     mock_post.should_receive(:create).and_return(true)
  #     Post.stub!(:new => mock_post)
  #     post :index
  #     expect(response).to redirect_to("posts#index")
  #   end
  # end
  describe "POST /posts/index" do
    it "persists the post to the database" do
      mock_post = double(:post)
      mock_post.should_receive(:create).and_return(true)
      Post.stub!(:new => mock_post)
      post :create_post, {}
      expect(response).to redirect_to("posts#index")
      page.should have_content("Successfully added post.")
    end
  end


end
