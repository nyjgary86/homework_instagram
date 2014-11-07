class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @the_photo = Photo.find_by(id: params[:id])
  end

  def new_form
  end

  def create_row
    new_photo = Photo.new
    new_photo.caption = params[:the_caption]
    new_photo.source = params[:the_source]
    new_photo.save
  end

  def destroy
    the_photo = Photo.find_by(id: params[:id])
    the_photo.destroy
  end

  def edit_form
    @the_photo = Photo.find_by(id: params[:id])
    @submit_URL = "http://localhost:3000/update_photo/" + params[:id]
  end

  def update_row
    the_photo = Photo.find_by(id: params[:id])
    the_photo.caption = params[:the_caption]
    the_photo.source = params[:the_source]
    the_photo.save
  end

end
