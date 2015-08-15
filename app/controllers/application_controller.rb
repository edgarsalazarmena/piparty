<<<<<<< HEAD
class ApplicationController < ActionController::API

private
  def auth_token
    @auth_token = request.headers.env["HTTP_AUTH_TOKEN"]
  end

  def current_user
    @current_user ||= User.find_by(auth_token: auth_token)
  end

  def authenticate_with_token!
    render json: { errors: "Not authenticated" },
                status: :unauthorized if current_user.nil?
  end 
  
=======
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
>>>>>>> b889893d42b34e19a866e0d30aa04732a15fa7c2
end
