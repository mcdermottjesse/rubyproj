class Car < ApplicationRecord

  def self.search(search)
    if search
      where('brand LIKE ?', "%#{search}%")
      where('model LIKE ?', "%#{search}%")
      where('year LIKE ?', "%#{search}%")
      where('price LIKE ?', "%#{search}%")
      where('colour LIKE ?', "%#{search}%")
    else
      Car.all
    end
  end
end
