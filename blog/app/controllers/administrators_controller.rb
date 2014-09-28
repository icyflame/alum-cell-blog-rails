class AdministratorsController < ApplicationController
  def index
  end

  def create

    # render plain: params[:administrator].inspect

    @administrator = Administrator.new(admin_params)

    if @administrator.save
      redirect_to @administrator
      # render plain: "Administrator Created."
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
    @administrator = Administrator.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def admin_params
    params.require(:administrator).permit(:name, :email, :designation)
  end

end
