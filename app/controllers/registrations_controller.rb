class RegistrationsController < ApplicationController
	def new
	
	end

	def create
	    #complete this method
		@user = User.create(user_params)
		if @user.save
			redirect_to users_path(@user.id), notice: 'Successful registration'
		else
			redirect_to registrations_url, notice: @user.errors.messages
		end
	end

	def user_params
		params.require(:registrations).permit(:name, :last_name, :email, :password, :phone)
	end

end
