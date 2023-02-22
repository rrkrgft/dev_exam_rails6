class HousesController < ApplicationController
  before_action :set_house, only: [:show, :edit, :update, :destroy]

  def new
    @house = House.new
    2.times { @house.stations.build }
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
    @house.stations.build
  end

  def update
    if @house.update(house_params)
      redirect_to houses_path
    else
      rener :edit
    end
  end

  def show
  end

  def destroy
    @house.destroy
    redirect_to houses_path
  end  

  private
  def house_params
    params.require(:house).permit(:name, :price, :address, :build, :remarks, stations_attributes: [:id, :train, :name, :walk, :_destroy] )
  end

  def set_house
    @house = House.find(params[:id])
  end
end
