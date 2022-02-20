module CommentsHelper

  def only_approved_false
    self.where(approved: false, justify: nil)
  end

end