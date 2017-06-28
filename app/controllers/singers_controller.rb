class SingersController < ApplicationController

  def index
    @singers = Singer.all.alphabetize
  end

  def show
    @singer = Singer.find(params[:id])
  end

  def new
    @singer = Singer.new
  end

  def create
    @singer = Singer.new(singer_params)
    if @singer.save
      flash[:notice] = "Singer successfully added!"
      redirect_to singers_path
    else
      render :new
    end
  end

  def edit
    @singer = Singer.find(params[:id])
  end

  def update
    @singer = Singer.find(params[:id])
    if @singer.update(singer_params)
      flash[:notice] = "Singer successfully updated!"
      redirect_to singer_path
    else
      render :edit
    end
  end

  def destroy
    @singer = Singer.find(params[:id])
    @singer.destroy
    redirect_to singers_path
  end

  private
  def singer_params
    params.require(:singer).permit(:name, :image)
  end
end
