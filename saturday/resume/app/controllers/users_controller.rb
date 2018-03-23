class UsersController < ApplicationController

	def index
		
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to @user
		else
			p "========#{@user.errors.full_messages}==========="
		end	
	end

	def edit
		
	end

	def show
		@user = User.find(params[:id])
	end

	private
		def user_params
			params.require(:user).permit(:name, :email, :phone, :obj, :father, :mother, :gender, :hobbies, :strenght, educations_attributes: [ :per, :year, :education ,:user_id] , experiences_attributes: [:comp_name, :designation, :from, :to, :user_id], projects_attributes:[:title, :des, :user_id])
		end
end
