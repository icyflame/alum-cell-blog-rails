class ContributorsController < ApplicationController
  def index
    @contributors = Contributor.all
  end

  def create

    @contributor = Contributor.new(contrib_params)

    if @contributor.save
      redirect_to @contributor
      # render plain: "contributor Created."
      return
    else
      render 'new'
      return
    end

  end

  def new
  end

  def edit
  end

  def show
    @contributor = Contributor.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def contrib_params
    params.require(:contributor).permit(:name, :email)
  end
end
