class Car < ApplicationRecord

  def self.search(search)
    if search
      where('brand LIKE :search OR model LIKE :search', search: "%#{search}%")
    
    else
      Car.all
      
    end
  end
end
