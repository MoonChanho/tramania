class PostsController < ApplicationController
  def new
  end
  
  def home
  end
  
  def create
    @post = Post.new
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    
    redirect_to "/posts/show/#{@post.id}"
  end
  
  # READ
  def index
    @posts = Post.all
    #post들은 Post를 전부 담고 있다
  end
  
  def show
    @post = Post.find(params[:post_id]) 
    @comments = Comment.where(post_id: params[:post_id])
    #조건절의 앞 post_id(컬럼 이름)와 뒤의 파라미터는 다르다.
    #post_id: params[:post_id] <=> :post_id => params[:post_id]
  end
  
  # DESTROY
  def destroy
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to '/posts/index'
  end
  
  # UPDATE
  def edit # 사용자가 데이터를 입력할 화면
    @post = Post.find(params[:post_id])
  end
  
  def update  # 입력받은 데잍를 실제 DB에 저장할 액션
    @post = Post.find(params[:post_id])
    
    @post.title = params[:input_title]
    @post.content = params[:input_content]
    @post.save
    
    redirect_to "/posts/show/#{params[:post_id]}"
  end
end
