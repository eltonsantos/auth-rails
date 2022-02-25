class PolyAction < ApplicationRecord
  belongs_to :resourceable, polymorphic: true
  belongs_to :user

  # Polyaction / Car
  # resourceable_type = Class name
  # resourceable_id = id do objeto
  # user_id = user_id
  # observation = note
  
end
