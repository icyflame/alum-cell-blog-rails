class PostsController < ApplicationController
  def index
  end

  def create
    @contributor = Contributor.find(params[:contributor_id])

    if @post = @contributor.posts.create(post_params)

      redirect_to post_path(@post)

    else

      render 'new'

    end

    # @post = Post.new(post_params)

    # render plain: params[:post].inspect

  end

  def new
  end

  def edit
  end

  def show
    @post = Post.find(params[:id])

    @contributor = Contributor.find(@post.contributor_id)
    
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.require(:post).permit(:title, :content, :tags)
  end
end
