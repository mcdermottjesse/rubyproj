class Car < ApplicationRecord
  def self.search_brand(search_brand)
    if search_brand
      # where('brand LIKE :search OR model LIKE :search OR colour LIKE :search OR cast(year as text) LIKE :search OR cast(price as text) LIKE :search', search: "%#{search}%")
    where('brand LIKE :search_brand', search_brand: "%#{search_brand}%")
    else
      Car.all
      
    end
  end

  def self.search_model(search_model)
    if search_model
      # where('brand LIKE :search OR model LIKE :search OR colour LIKE :search OR cast(year as text) LIKE :search OR cast(price as text) LIKE :search', search: "%#{search}%")
    where('model LIKE :search_model', search_model: "%#{search_model}%")
  else
    Car.all
      
    end
  end

  def self.search_year(search_year)
    if search_year

    where('cast(year as text) LIKE :search_year', search_year: "%#{search_year}%")
    
  else
    Car.all
      
    end
  end

  def self.search_price(search_price)
    if search_price

  where("cast(price as text) < :search_price", search_price: "%#{search_price}%")
    
  else
    Car.all
      
    end
  end

  def self.search_colour(search_colour)
    if search_colour

    where('colour LIKE :search_colour', search_colour: "%#{search_colour}%")
    
  else
    Car.all
      
    end
  end
end
