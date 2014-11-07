class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    the_id = params[:id]
    the_photo = Photo.find_by(id: the_id)
    @the_caption = the_photo.caption
    @the_source = the_photo.source
  end

end
