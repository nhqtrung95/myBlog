class PostsController < ApplicationController
    def new
    	
    end
    def create
    	@post = Post.new(params.require(:post).permit(:title, :content))
 		@post.save
   		render plain: @post.inspect
  	end

  	def show
  		@post = Post.find(params[:id])
  	end

	def edit
	  	@post = Post.find(params[:id])
	end  

  def update
      @post = Post.find(params[:id])
      if @post.update(params.require(:post).permit(:title, :content))
      render plain: 'Edit Success'
      end
  end

  def destroy
      @post = Post.find(params[:id])
      @post.destroy
      render plain: 'Deleted'
  end
end
