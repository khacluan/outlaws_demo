class HomeHamlController < ApplicationController
  layout 'home_haml'

  def index
    @products = $redis.get('products')

    if @products.nil?
      @products = Product.joins(:category).pluck("products.id", "products.name", "categories.name")
      $redis.set('products', @products)
      $redis.expire('products', 3.hour.to_i)
    end

    @products = JSON.load(@products) if @products.is_a?(String)

  end

  def sidebar
    render partial: 'sidebar'
  end

  def setting

  end
end
