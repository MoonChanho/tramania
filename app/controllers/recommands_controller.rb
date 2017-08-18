class RecommandsController < ApplicationController
    def create 
        @recommand = Recommand.new
        @recommand.sights = params[:sights]
        @recommand.option = params[:option]
        @recommand.lat = params[:lat]
        @recommand.lng = params[:lng]
        
        @recommand.save
        
        redirect_to "/recommands/show/#{@recommand.id}"
    end
  # READ
    def index
        @recommands = Recommand.all
    #post들은 Post를 전부 담고 있다
    end
  
    def show
        @post = Post.find(params[:recommand_id]) 
        @comments = Comment.where(option: params[:option])
        #조건절의 앞 post_id(컬럼 이름)와 뒤의 파라미터는 다르다.
        #post_id: params[:post_id] <=> :post_id => params[:post_id]
    end
end
