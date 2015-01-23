class HomeHamlController < ApplicationController
  layout 'home_haml'

  def index
    @products  = Product.includes(:category).limit(500)
  end

  def sidebar
    render partial: 'sidebar'
  end

  def setting

  end
end
