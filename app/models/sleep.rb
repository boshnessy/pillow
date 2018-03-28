class Sleep < ApplicationRecord
  has_many :images

  def as_json
    {
      id: id,
      name: name,
      price: price,
      tax: tax,
      total: total,
      description: description
    }
  end

  def tax
    price * 0.09
  end

  def total
    price + tax
  end
end
