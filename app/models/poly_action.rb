class PolyAction < ApplicationRecord
  belongs_to :resourceable, polymorphic: true
  belongs_to :user
end
