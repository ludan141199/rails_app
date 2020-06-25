class PostsController < ApplicationController
    skip_before_action :verify_authenticity_token, only: [:update, :edit]
    def index
    
        @posts = Post.all

    end
    def new
    
    end
    def create
        
        Post.create(title:params[:title],
                    content:params[:content]
                    )
        
        redirect_to :controller => 'posts', :action => 'index'
    end
    def show
        
    @post = Post.find(params[:id])

    end
    def del
        
        Post.delete(params[:id])
        redirect_to :controller => 'posts', :action => 'index'
    end
    def edit
        
        @post = Post.find(params[:id])


    end
    def update
    
        post = Post.find(params[:id])
        post.title = params[:title]
        post.content = params[:content]
        post.save
        redirect_to :controller => 'posts', :action => 'index'
    end    
end
