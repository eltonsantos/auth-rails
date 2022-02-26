class Comment < ApplicationRecord

  audited
  
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  validates :justify, presence: true, unless: :comment_rejected

  scope :for_approvation, -> { where(approved: false, justify: nil) }

  scope :edit_justify, -> { where("justify <> ''") }

  def comment_rejected
    self.approved?
  end
 
end
