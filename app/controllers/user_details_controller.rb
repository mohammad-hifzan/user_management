class UserDetailsController < ApplicationController
	def show
		@user = User.find(params[:id])
		if @user.admin?
			@job_applications = JobApplication.all
		else
			@job_applications = @user.job_applications
		end
	end
end
