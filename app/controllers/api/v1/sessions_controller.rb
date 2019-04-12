class Api::V1::SessionsController < Devise::SessionsController
  before_action :authenticate_user!

  def create
    user = User.find_by_email(sign_in_params[:email])
    if user && user.valid_password?(sign_in_params[:password])
      current_user = user
      # render json: current_user
      puts("RESOURCE", resource)
      sign_in(resource_name, resource)
      
    else
      render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    end
  end

  private


end
