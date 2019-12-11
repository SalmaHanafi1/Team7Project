class SessionsController < ApplicationController
  #skip_before_action :authorized, only: [:new, :create, :welcome]
  #skipped the authorized to allow users to freely explore page if wanted 
  
  def new
  end
 
  def login 
  end 
#users 
 def create
   @user = User.find_by(username: params[:username])
   if @user && @user.authenticate(params[:password])
      sessions[:user_id] = @user.id
      redirect_to @mainpage
   else
      redirect_to 'mainpage/index'
   end
 end 
  
  def page_requires_login
  end 

  def login
  end

  def welcome
  end
end
