class PostsController < ApplicationController
  def index

    if params[:contributor_id]

      @posts = Post.all.order(created_at: :desc).where("contributor_id = ?", params[:contributor_id])

    else

     @posts = Post.all.order(created_at: :desc)

   end   

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
    if contributor_signed_in?
      @contributor = current_contributor
    else
      flash[:alert] = "You need to be signed in as a contributor to add new posts."
      redirect_to new_contributor_session_path
    end
  end

  def edit
  end

  def show

    @post = Post.find(params[:id])

    @contributor = Contributor.find(@post.contributor_id)

    # if params[:contributor_id]

    #   render plain: "Contributor ID is defined."

    # else
    #   render plain: "Contributor ID is not defined"
    # end

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
