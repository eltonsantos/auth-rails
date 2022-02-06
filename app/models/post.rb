class Post < ApplicationRecord
  audited
  
  belongs_to :user

  has_many :comments, as: :commentable
end
