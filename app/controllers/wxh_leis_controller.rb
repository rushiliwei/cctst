
class WxhLeisController < ApplicationController
  before_filter :authenticate_user!  #添加这行
  authorize_resource :class => false

  def index
  end

  def wue
    p 'wwwwwwwwwwwwwwwwlllllllllllll'
  end

  private

end
