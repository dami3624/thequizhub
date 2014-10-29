class QuizHubController < ApplicationController
  
  layout 'header'
  
  def index
  end

  def new
  #@user = User.new
  end

  def create
  	#Instantiate a new object using form parameters
  	#@user = User.new(user_params)
  	User.create(:name => params[:name], :email => params[:email], :password => params[:password])

  	#save the 
  	#if @user.save
  		#if save succeeds, redirect to the index action
  		redirect_to :action => 'index'
  	#else
  		# if save fails, redisplay the form so user can fix problems
  		#render('new')
  	#end

  end

  def login
  end

  private 

  def user_params
  	params.require(:user).permit(:name, :email, :password)
  end

end
