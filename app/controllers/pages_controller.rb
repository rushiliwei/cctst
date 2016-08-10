class PagesController < ApplicationController
  before_action :authenticate_user!, :only => :secret
  skip_authorization_check

  def welcome
  end

  def secret
  end

  def access_denied
  end
end
