class UsersController < ApplicationController
  before_action :authenticate_user!, except: :show
  def show
#    @name = current_user.name
    @user =User.find(params[:id])
    @prototypes = @user.prototypes
  end
end
