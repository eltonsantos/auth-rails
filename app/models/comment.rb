class Comment < ApplicationRecord

  audited
  
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  scope :for_approvation, -> { where(approved: false, justify: nil) }

end
