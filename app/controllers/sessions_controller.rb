class SessionsController < ApplicationController
	def new
		
	end

	def create
		user = User.find_by(name: params[:session][:name].downcase)
		if user && user.authenticate(params[:session][:password])
			sign_in user
			redirect_to user 
		else
		    flash.now[:error] = 'Invalid name/password combination' 
		    render 'new'			
		end
	end

	def destory
		
	end
end
