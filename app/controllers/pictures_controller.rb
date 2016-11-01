class PicturesController < ApplicationController

  def index
    pictures = Picture.all()
    render :json => pictures.to_json()
  end

  def create
    picture = Picture.create!( comment_params )
    picture.save()
    pictures = Picture.all()
    render :json => pictures.to_json()
  end

  private
  def comment_params
    params.require(:picture).permit([ :url ])
  end

end