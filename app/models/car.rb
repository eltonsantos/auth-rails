class Car < ApplicationRecord
  audited
  
  belongs_to :user

  has_many_attached :photos
end
