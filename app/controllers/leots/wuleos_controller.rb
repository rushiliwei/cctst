class Leots::WuleosController < ApplicationController
  before_filter :authenticate_user!  #添加这行
  # load_and_authorize_resource :class => Competence::Homeleo
  authorize_resource :class => false 

  def index
  end

  def wue
  end
end
