module Abilities
  class Superadmin
    include CanCan::Ability

    def initialize(user)
      can :manage, User
    end
  end
end