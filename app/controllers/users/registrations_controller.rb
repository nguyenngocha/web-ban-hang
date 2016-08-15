class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_sign_up_params, only: :create
  before_action :configure_account_update_params, only: :update

  def new
    build_resource {}
    self.resource.address = Address.new
    respond_with self.resource
  end

  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up) {|u| u.permit :email,
      :phone_number, :name, :password, :password_confirmation,
      address_attributes: [:city, :town, :village, :home_number]}
  end

  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update) {|u| u.permit :name,
      :password, :password_confirmation}
  end
end
