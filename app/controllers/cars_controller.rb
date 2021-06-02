class CarsController < ApplicationController
  
  def index
    
    @car = Car.search_brand(params[:search_brand])
    .search_model(params[:search_model])
    .search_year(params[:search_year])
    .search_price(params[:search_price])
    .search_colour(params[:search_colour])
    .order(created_at: :desc)

    @honda = Car.find(2)
    @mercedes = Car.find_by(:brand => "Mercedes") #or Car.find_by(brand: "BMW")
    @bmw = Car.where("brand LIKE ?", "%B%") #or Car.where(brand: "BMW") to get exact etc
    
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


