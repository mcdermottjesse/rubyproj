class SearchController < ApplicationController

  def brand_index
  @car_brand = Car.search_brand(params[:search_brand])
  end

  def model_index
    @car_model = Car.search_model(params[:search_model])
   
    end

    def year_index
      @car_year = Car.search_year(params[:search_year])
    end

    def price_index
      @car_price = Car.search_price(params[:search_price])
    end

    def colour_index
      @car_colour = Car.search_colour(params[:search_colour])
    end
end
