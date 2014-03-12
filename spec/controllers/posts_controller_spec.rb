require 'rspec'

class Post
  attr_reader :content

  def initialize(args)
    @content = args[:content]
    @author = args[:author]
  end
end




describe Post do
    let(:post) {Post.new(content: "Here's my post!", author: "Steve Dave")}

    it "has content" do
      post.content { should exist }
    end



end
