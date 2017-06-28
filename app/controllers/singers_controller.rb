class SingersController < ApplicationController

  def index
    @singers = Singer.all
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

  private
  def singer_params
    params.require(:singer).permit(:name)
  end
end
