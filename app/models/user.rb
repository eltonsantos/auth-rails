class User < ApplicationRecord

  audited
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum role: { superadmin: 0, auditor: 1, manager: 2, registred: 3 }

  has_many :cars
  has_one :profile
  has_one_attached :avatar

  accepts_nested_attributes_for :profile, reject_if: :all_blank, allow_destroy: true

end
