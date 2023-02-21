class HousesController < ApplicationController
  def new
    @house = House.new
  end
  
  def create
    @house = House.new(house_params)
    if @house.save
      redirect_to houses_path
    else
      render :new
    end
  end

  def index
    @houses = House.all
  end

  def edit
  end

  def show
    @house = House.find(params[:id])
  end

  private
  def house_params
    params.require(:house).permit(:naem, :price, :address, :build, :remarks )
  end
end
