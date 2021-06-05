class UsersController < ApplicationController

  def edit
  end

  def update
    # user = User.find(params[:id])
    # user.update(user_params)
    if current_user.update(user_params)
      redirect_to root_path
    else
      # redirect_to edit_use_path
      render :edit
    end
  end

private
  def user_params
    # params.require(:user).permit(:name).merge(user_id: current_user.id)
    params. require(:user).permit(:name, :email)
  end
end
