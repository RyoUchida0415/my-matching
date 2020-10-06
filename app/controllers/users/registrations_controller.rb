# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # before_action :after_sign_up_path_for, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
      user = User.new(user_params)
      # 画像が投稿された場合
      if user.image.present?
          # Cloud Vision APIで画像分析して、分析結果を変数に代入
          if Vision.image_analysis(user.image)
            user.save
            redirect_to users_path
          else
            flash[:danger] = '画像が不適切です'
            redirect_to new_user_registration_path
          end
      # 画像が投稿されてない場合
      else
          redirect_to users_path
      end
   end

   private

  def user_params
    params.require(:user).permit(:nickname, :email, :age, :prefecture, :sex, :introduction, :image, :password, :password_confirmation)
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
