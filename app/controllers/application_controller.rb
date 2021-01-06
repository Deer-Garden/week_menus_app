class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permtted_parameters, if: :devise_controller?


  private
  def configure_permtted_parameters
    devse_parameter_sanitizer.permit(:singn_up, keys: [:nickname, :email, :password])
  end
end
