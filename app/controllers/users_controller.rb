
class UsersController < ApplicationController
  


  def show
    @user = User.find(params[:id])
    respond_to :html
  end

end
