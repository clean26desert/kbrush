class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_handle_name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:user_img_id, :user_handle_name, :user_introduct, :credit, :bank, :branch_office, :bank_account, :f_appo_flg, :f_business_flg, :user_appo_flg])
  end
end
