class HomeBadController < ApplicationController
  layout 'home_bad'

  def index
    @products  = Product.limit(500)
  end

  def setting
  end

end
