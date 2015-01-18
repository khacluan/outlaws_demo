class HomeGoodController < ApplicationController
  layout 'home_good'

  def index
    @products  = Product.includes(:category).limit(500)
  end

  def sidebar
    render partial: 'shared/sidebar'
  end

  def setting

  end

end
