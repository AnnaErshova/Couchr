class RegistrationsController < Devise::RegistrationsController
  # private

  # def sign_up_params
  #   # params.require[:user].permit(:name, :email, :password, :password_confirmation)
  #   params.require(:name)
  #   params.require(:email)
  #   params.require(:password)
  #   params.require(:password_confirmation)
  #   params.permit(:name, :email, :password, :password_confirmation)
  #   # params.require[:user].permit(:name, :email, :password, :password_confirmation)
  # end

  # def account_update_params
  #   params.require[:user].permit(:name, :email, :password, :password_confirmation, :current_password)
  # end
end
