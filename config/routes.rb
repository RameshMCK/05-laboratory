Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'die', to: 'dice#roll'
  get 'showtime', to: 'time#gettime'
  get '/math/root/:x', to: 'math#root'
  get '/math/add', to: 'math#showadd'
  post '/math/add', to: 'math#computeadd'
  
  get '/math/ransum', to: 'math#get_ransum'
  post '/math/ransum', to: 'math#post_ransum'


 get '/math/dupcount', to: 'math#get_dups'
 post '/math/dupcount', to: 'math#post_dups'

      get '/stock/showstock', to: 'stock#get_stock'
      post '/stock/showstock', to: 'stock#get_stock'

  
end
