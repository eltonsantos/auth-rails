module Abilities
  class Supervisor
    include CanCan::Ability

    def initialize(user)
      can :read, :supervisor
      cannot :manage, Car
    end
  end
end