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

  def edit
    @singer = Singer.find(params[:singer_id])
    @album = Album.find(params[:id])
  end

  def update
    @singer = Singer.find(params[:singer_id])
    @album = Album.find(params[:id])
    if @album.update(album_params)
      flash[:notice] = "Album successfully updated!"
      redirect_to singer_path(@album.singer)
    else
      render :edit
    end
  end

  def destroy
    @singer = Singer.find(params[:singer_id])
    @album = Album.find(params[:id])
    @album.destroy
    redirect_to singer_path(@album.singer)
  end

  private
  def album_params
    params.require(:album).permit(:title, :year)
  end

end
