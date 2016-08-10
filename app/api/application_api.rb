class ApplicationAPI < Grape::API
  include APIGuard

  # format :json
  format :json
  default_format :json

  mount V1::Base
  mount V1::SampleAPI => :sample
  mount V1::SecretAPI => :secret

  mount V5::DooptestAPI => :dooptest
end
