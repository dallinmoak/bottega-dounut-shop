class Donut < ApplicationRecord
  validates_presence_of :title, :description, :price

end
