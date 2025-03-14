json.user_name @user.name
json.user_email @user.email
json.job_applications @job_applications do |job_application|
	json.name job_application.name
end