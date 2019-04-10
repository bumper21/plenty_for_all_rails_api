class Api::V1::UsersController < Devise::SessionsController
  before_action :authenticate_user!
end
