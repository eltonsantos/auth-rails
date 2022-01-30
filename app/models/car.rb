class Car < ApplicationRecord
  audited
  
  belongs_to :user
end
