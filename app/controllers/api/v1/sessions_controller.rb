class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_signed_out_user

  def create
    super
    # THE CODE BELOW WILL MOST LIKELY NEED TO BE USED LATER ON
    # WHEN WE ARE TESTING MAILERS ETC ON FRONT END

    # user = User.find_by_email(sign_in_params[:email])
    # if user && user.valid_password?(sign_in_params[:password])
    #   current_user = user
    #   # render json: current_user
      
      
    # else
    #   # render json: { errors: { 'email or password' => ['is invalid'] } }, status: :unprocessable_entity
    # end

  end

  def destroy
    super
    
  end

  private


end
