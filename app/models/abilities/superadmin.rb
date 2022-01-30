module Abilities
  class Superadmin
    include CanCan::Ability

    def initialize(user)
      can :manage, :all
    end
  end
end