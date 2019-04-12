class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user!

  def current
    user = current_user
    render json: current_user
  end

end
