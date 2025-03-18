class UsersController < ApplicationController
  def new
        @user = User.new
      end
    
      def create
        @user = User.new(user_params)
        if @user.save
          session[:user_id] = @user.id
          redirect_to places_path
        else
          render :new
        end
      end
    
      private
      def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end
    end
    
  def create
    @user = User.new
    @user["first_name"] = params["first_name"]
    @user["last_name"] = params["last_name"]
    @user["email"] = params["email"]
    @user["password"] = params["password"]
    @user.save
    redirect_to "/"
  end
end
