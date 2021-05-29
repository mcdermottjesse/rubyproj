class CarsController < ApplicationController
  # before_action :set_car, only: %i[ show edit update destroy ]


  def index
    
    @car = Car.all
   
  end
  
  def show
    @car = Car.find params[:id]
  end

  
  def new
    @car = Car.new
  end

  def edit
  end


  def create
    @car = Car.new(car_params)

 
  end

  
  def update

  end

  
  def destroy
    @car.destroy
  
  end

  private
 
    def car_params
      params.require(:car).permit(
        :id,
        :brand,
        :model,
        :image,
        :year,
        :price
      )
    end
end
