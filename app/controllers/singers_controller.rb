class SingersController < ApplicationController

  def index
    @singers = Singer.all
  end

  def show
    @singer = Singer.find(params[:id])
  end

end
