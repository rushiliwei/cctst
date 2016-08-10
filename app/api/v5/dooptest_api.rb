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
      # byebug
      header 'Access-Control-Allow-Origin', '*'
      # header 'Access-Control-Request-Method', %w{GET POST OPTIONS}.join(",")
      # # header 'Access-Control-Allow-Methods', 'GET'
      # header 'Access-Control-Allow-Methods', %w{GET POST OPTIONS}.join(",")
      p 'API_S2================>'
      # byebug
      { :s2 => "only smart guys can see this ;" }
    end
  end
end
