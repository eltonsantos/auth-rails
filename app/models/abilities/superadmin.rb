module Abilities
  class Superadmin
    include CanCan::Ability

    def initialize(user)
    end
  end
end