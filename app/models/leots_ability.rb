class LeotsAbility

  include CanCan::Ability

  def initialize(user)
    @user = user || User.new # for guest
    if @user.role_perm.nil?
      guest
    else
      role_name = @user.role_perm.urole.to_sym
      # byebug
      send(role_name)
    end
  end

  def admin
    # cannot :index, Qxrz::Homeleo
    cannot :index, Competence::Homeleo
  end

  def guest
    can :read, :all
  end

  def method_missing(symbol, *args)
    #This is a stub, used for indexing
    # puts symbol
    guest
  end

end
