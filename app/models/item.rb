class Item < ActiveRecord::Base

  scope :in_stock, ->{ where("stock > 0")}

  has_many :purchases

  def reduce_stock_by!(amount)
    self.stock -= amount
    save!
  end
end
