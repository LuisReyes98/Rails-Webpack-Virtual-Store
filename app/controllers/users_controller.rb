class UsersController < ApplicationController
  def destroy
    @user = User.find(params[:id])
    if current_user != @user
      begin
        @user.destroy
        if @user.destroy
          redirect_to dashboard_users_url , notice: "User deleted."
        end              
      rescue => exception
      end
    else
      redirect_to dashboard_users_url , notice: "User can't be deleted."        
    end
  end
end