module Abilities
  class Supervisor
    include CanCan::Ability

    def initialize(user)

      cannot :manage, Car
    end
  end
end