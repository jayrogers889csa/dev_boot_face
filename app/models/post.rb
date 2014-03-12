class Post < ActiveRecord::Base



  attr_reader :content, :author

  def initialize(params)
    @content = params[:content]
    @author = params[:author]
  end

  def create_post(content, author)
  end
end

