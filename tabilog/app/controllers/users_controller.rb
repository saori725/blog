class UsersController < ApplicationController
   def show
    user = User.find(show_params[:id])
    @nickname = user.nickname
    @matelpages = user.matelpages.order('created_at DESC')
  end

  private
  def show_params
    params.permit(:id)
  end
end
