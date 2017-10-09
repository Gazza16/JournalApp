class JournalController < ApplicationController

  def index
    @posts = Post.all
    @post = Post.new
  end

  def create
    @post = Post.new
    @post.title = params[:post][:title]
    @post.content = params[:post][:content]
    @post.save


    redirect_to '/'

  end
def post_params
  params.require(:post).permit(:title, :content)
end
end
