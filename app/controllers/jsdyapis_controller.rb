# js'ajax in other webapp call this action
class JsdyapisController < ApplicationController
  # before_filter :authenticate_user!  #添加这行
  # authorize_resource :class => false

  def index
    # JW：跨域设置
    # headers['Access-Control-Allow-Origin'] = "*"
    # headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
    # JW：返回JSON数据

    p 'oooooooooooooooPPPPPPPPPPPPPPPIIIIIIIIIIIII=========>'
    render json: {q:1, w:2, r:6}
  end

  def wue
    p 'wwwwwwwwwwwwwwwwlllllllllllll'
  end

  private

end
