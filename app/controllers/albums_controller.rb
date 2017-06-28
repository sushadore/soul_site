class AlbumsController < ApplicationController

  def new
    @singer = Singer.find(params[:singer_id])
    @album = @singer.albums.new
  end

  def create
    @singer = Singer.find(params[:singer_id])
    @album = @singer.albums.new(album_params)
    if @album.save
      flash[:notice] = "Album successfully added!"
      redirect_to singer_path(@album.singer)
    else
      render :new
    end
  end

  private
  def album_params
    params.require(:album).permit(:title, :year)
  end

end
