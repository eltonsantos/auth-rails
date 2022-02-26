class Car < ApplicationRecord

  audited
  
  belongs_to :user

  has_many_attached :photos do |attachable|
    attachable.variant :thumb, resize: "100x100"
  end
  
  has_many :comments, as: :commentable

  has_many :poly_actions, as: :resourceable, dependent: :destroy

  scope :for_approvation, -> { where(approved: false, justify: nil) }

end
