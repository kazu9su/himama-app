class SessionsController < ApplicationController
  def new
  end

  def create
    user = nil
    user = User.find_by(name: params[:session][:name])
    if user
      log_in(user)
    else
      flash[:danger] = 'Unexsisting user'
      render :new
    end
  end

  def destroy
  end
end
