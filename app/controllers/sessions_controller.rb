class SessionsController < ApplicationController
  def new
  end

  def create
    admin = Admin.find_by(email: params[:session][:email].downcase)
    if admin && admin.authenticate(params[:session][:password])
      flash[:secondary] = "Welcome back!"
      log_admin(admin)
      #params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to admin_Groupe_Oberlin_url

    else
      flash.now[:alert] = 'Sorry! Invalid name/password combination'
      render 'new'
    end

  end

  def destroy
    admin_out if logged_admin?
    redirect_to(root_path)
  end
end
