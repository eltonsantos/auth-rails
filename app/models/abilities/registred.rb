module Abilities
  class Registred
    include CanCan::Ability

    def initialize(user)
    end
  end
end