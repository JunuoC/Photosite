class PhotosController < ApplicationController
  def index
    @user = User.joins(:photos)
    @photos = Photo.joins(:comments)


    @user = User.find(params[:id])
    @photos = @user.photos


  end

end
