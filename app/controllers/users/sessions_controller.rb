# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
   def create
     super
   end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  def after_sign_in_path_for(user)
       products_path
      end
    
      def after_sign_out_path_for(user)
        root_path
    end

  protected

  # If you have extra params to permit, append them to the sanitizer.
   def configure_sign_up_params
   devise_parameter_sanitizer.permit(:sign_up, keys: [ :name, :postal_code, :address, :phone, :email, :password, :password_confirmation ])
   end

  
  
end
