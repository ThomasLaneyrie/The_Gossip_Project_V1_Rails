class AuthorController < ApplicationController
  def show
    @user= User.find(params[:show])
  end
end
