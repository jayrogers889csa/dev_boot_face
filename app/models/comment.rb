class Comment < ActiveRecord::Base
  belong_to :commentable, polymorphic: true
  belong_to :user
end

