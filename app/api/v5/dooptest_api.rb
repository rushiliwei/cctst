require 'doorkeeper/grape/helpers'

module V5
  class DooptestAPI < Grape::API
    helpers Doorkeeper::Grape::Helpers
    # before do
    #   doorkeeper_authorize!
    # end

    get "s1" do
      doorkeeper_authorize!
      { :s1 => "Hi, #{current_user.try(:email)}" }
    end

    get "s2" do
      { :s2 => "only smart guys can see this ;" }
    end
  end
end