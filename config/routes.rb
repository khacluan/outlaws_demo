Rails.application.routes.draw do

  scope :home_good, controller: :home_good, as: :home_good do
    get 'index', as: :index, action: :index
    get 'sidebar', as: :sidebar, action: :sidebar
    get 'setting', as: :setting, action: :setting
  end

  scope :home_slim, controller: :home_slim, as: :home_slim do
    get 'index', as: :index, action: :index
    get 'sidebar', as: :sidebar, action: :sidebar
    get 'setting', as: :setting, action: :setting
  end


  scope :home_haml, controller: :home_haml, as: :home_haml do
    get 'index', as: :index, action: :index
    get 'sidebar', as: :sidebar, action: :sidebar
    get 'setting', as: :setting, action: :setting
  end

  scope :home_bad, controller: :home_bad, as: :home_bad do
    get 'index', as: :index, action: :index
    get 'setting', as: :setting, action: :setting
  end

end
