class ApplicationController < ActionController::API
  # see https://www.digitalocean.com/community/tutorials/build-a-restful-json-api-with-rails-5-part-one
  include Response
  include ExceptionHandler
end
