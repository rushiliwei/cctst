class HomeleosController < ApplicationController
  before_filter :authenticate_user!  #添加这行
  # load_and_authorize_resource :class => Qxrz::Homeleo
  load_and_authorize_resource :class => Competence::Homeleo

  def index
  end

  def admin_one
  end
  def admin_two
  end

  def cs_one
  end
  def cs_two
  end

  private
end
