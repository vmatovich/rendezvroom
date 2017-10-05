class PhotosController < ApplicationController

  before_action :authenticate_user!

  def create

    @place = Place.find(params[:place_id])

    @place.photos.create!(photo_params.merge(:user_id => current_user.id))

    redirect_to place_path(@place)

  end

  private

  def photo_params

  params.require(:photo).permit(:caption, :picture, :place_id, :user_id)

  end

end

