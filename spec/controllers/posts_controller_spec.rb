require 'rspec'

class Post
  attr_reader :content, :author
  def initialize(args)
    @content = args[:content]
    @author = args[:author]
  end

  def create_post(content, author)
  end
end




describe Post do
  let(:post) {Post.new(content: "Here's my post!", author: "Steve Dave")}

  it "has content" do
    post.content { should exist }
  end

  it "has author" do
    expect(post.author).to eq "Steve Dave"
  end

  context "when creating a new post" do
    it "persists the post to the database" do
      mock_post = double(:post)
      mock_post.should_receive(:save).and_return(true)
      Post.stub(:new => mock_post)

      # redirect_to '/user/:id'
      response.should redirect_to '/timeline'
    end

  end


end
