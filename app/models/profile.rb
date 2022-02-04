class Profile < ApplicationRecord
  audited

  belongs_to :user
end
