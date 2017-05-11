class PhotosController < ApplicationController
  def index
    @list_of_all_my_photos = Photo.all
    render("photos/index.html.erb")
  end

  def show
    the_id = params[:da_id]
    @my_photo = Photo.find(the_id)
    render("photos/show.html.erb")
  end

  def new_form
    render("photos/new_form.html.erb")
  end

  def create_row
    url = params[:da_source]
    cap = params[:da_caption]
    new_photo = Photo.new
    new_photo.source = url
    new_photo.caption = cap
    new_photo.save
    # render("photos/create_row.html.erb")
    redirect_to("/photos")
  end

  def edit_form
    @photo_edit = Photo.find(params[:id])
  end

  def update_row
    render("photos/update_row.html.erb")
  end

  def destroy_row
      @photo_destroy = Photo.find(params[:id])
      @photo_destroy.destroy
      redirect_to("/photos")
  end

end
