class AdministratorsController < ApplicationController
  def index
    @administrators = Administrator.all
  end

  def show
    @administrator = Administrator.find(params[:id])
  end

  def verify_token
  	# render plain: params.inspect
  	if params[:verificationstring] == current_administrator.verification_string
  		@administrator = current_administrator
  		@administrator.update(verified: true)
  		flash[:alert] = "You have been validated as an administrator."
  	else
  		flash[:alert] = "You entered the wrong verfication token."
  	end
  	redirect_to posts_path
  end

  def verify
  end

  def moderate_content
    if administrator_signed_in?
      if current_administrator.verified
        temp = Post.find(params[:post])
        temp.moderated = !temp.moderated
        temp.save
        redirect_to temp
      end
    end
  end
  
end
