class UsersController < ApplicationController
  def create
  	@user = User.new(user_params)
  	if @user.save
  		render json: @user.to_json
  	else 
  		render json: {
  			"error": "User could not be created"
  		}
    end
  end

  private

  def user_params
  	params.require(:user).permit(:email, :password)
  end

end


