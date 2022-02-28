class Comment < ApplicationRecord

  audited

  attr_accessor :current_user
  
  belongs_to :user
  belongs_to :commentable, polymorphic: true

  # validates :justify, presence: true, if: Proc.new{ |f| f.approved == false }

  scope :for_approvation, -> { where(approved: false, justify: "") }

  scope :edit_justify, -> { where(approved: false) }

  # def comment_rejected
  #   !self.user.admin? and !self.approved? # false and false and false
  # end
 
end
