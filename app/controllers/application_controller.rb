class ApplicationController < ActionController::API
  respond_to :json
  include ActionController::MimeResponds
  before_action :authenticate_user!, unless: :devise_controller?
end
