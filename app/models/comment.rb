class Comment < ApplicationRecord

  audited
  
  belongs_to :user
  belongs_to :commentable, polymorphic: true
end
