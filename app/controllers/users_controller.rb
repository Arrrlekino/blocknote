class UsersController < ApplicationController

	def index
		@users = User.all.order('created_at DESC')
	end	

	def new
	end
	def show
		@user = User.find(params[:id])
	end	


	def create
		@user = User.new(user_params)
	
	if @user.valid?
		@user.save
		
		redirect_to users_path
	else
		render action: 'new'
	end
	end
#private

	#def user_params
	#	params.require(:user).permit(:email, :database_authenticatable, :registerable,  :recoverable, :rememberable, :trackable :validatable)
	#end	
end