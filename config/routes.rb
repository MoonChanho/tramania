Rails.application.routes.draw do
  get '/posts/new' => 'posts#new'
  post '/posts/create' => 'posts#create'
  
  get '/posts/list' => 'posts#list'
  get '/posts/home' => 'posts#home'
  
  get '/posts/gmap' => 'posts#gmap'
  # READ
  get '/posts/index' =>'posts#index'
  get '/posts/show/:post_id' => 'posts#show'
  
  post '/posts/destroy/:post_id' => 'posts#destroy'
  
  
  #post '/recommands/reindex' => 'recommands#'
  
  # UPDATE
  get '/posts/edit/:post_id' => 'posts#edit'
  post '/posts/update/:post_id' => 'posts#update'
  
   root 'posts#index'
  # get '/' => 'posts#index'랑 같은 의미
  
  ####댓글######
  
  post '/posts/show/:post_id/comments/create' => 'comments#create'
  #위에랑 똑같이 하면 정보가 부족하다. 
  #이렇게 해야 post_id도 같이 넘어갈 수 있다.
  post '/posts/show/:post_id/comments/destroy/:comment_id' => 'comments#destroy'
  
end
