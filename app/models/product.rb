class Product < ActiveRecord::Base
  belongs_to :category, touch: true
end
