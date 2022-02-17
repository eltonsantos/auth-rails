class Car < ApplicationRecord
  audited
  
  belongs_to :user

  has_many_attached :photos do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end
  
  has_many :comments, as: :commentable
end
