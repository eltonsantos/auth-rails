module Abilities
  class Admin
    include CanCan::Ability

    def initialize(user)
      can :admin, Menu
    end
  end
end