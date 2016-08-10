module Leots
  class LeotsController < ApplicationController
    # before_filter :verify_admin
    #
    # private
    # def verify_admin
    #   redirect_to root_url unless current_user.try(:admin?)
    # end

    def current_ability
      @current_ability ||= LeotsAbility.new(current_user)
    end
  end
end