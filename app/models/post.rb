class Post < ActiveRecord::Base
    # 여러 댓글을 가질 수 있다.
    has_many :comments, dependent: :destroy
    
end
