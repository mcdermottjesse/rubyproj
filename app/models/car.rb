class Car < ApplicationRecord

  def self.search(search)
    if search
      where('brand LIKE :search OR model LIKE :search OR colour LIKE :search OR cast(year as text) LIKE :search OR cast(price as text) LIKE :search', search: "%#{search}%")
    
    else
      Car.all
      
    end
  end
end
