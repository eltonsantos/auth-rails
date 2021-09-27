module Abilities
  class Admin
    include CanCan::Ability

    def initialize(user)
      cannot :manage, Car
    end
  end
end