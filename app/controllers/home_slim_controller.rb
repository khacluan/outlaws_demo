class HomeSlimController < ApplicationController
  layout 'home_slim'

  def index
    @products = JSON.load $redis.get('products')
    if @products.blank?
      @products = Product.includes(:category).pluck("products.id", "products.name", "categories.name")
      $redis.set('products', @products)
      $redis.expire('products', 3.hour.to_i)
    end
  end

  def sidebar
    render partial: 'sidebar'
  end

  def setting

  end
end
