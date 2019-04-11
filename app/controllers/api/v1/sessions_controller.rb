class Api::V1::SessionsController < Devise::SessionsController
  # prepend_before_action :require_no_authentication, only: [:new, :create]
  before_action :authenticate_user!

  def create
    user = User.find_by_email(sign_in_params[:email])
    if user && user.valid_password?(sign_in_params[:password])
      @current_user = user
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  private


end
