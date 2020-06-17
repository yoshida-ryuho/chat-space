class UsersController < ApplicationController

  def edit
  end

  def update
    if current_user.update(user_paramas)
      redirect_to root_path
    else
      render :edit
    end
  end
    
  private

  def user_paramas
    params.require(:user).permit(:name, :email)
  end
end
