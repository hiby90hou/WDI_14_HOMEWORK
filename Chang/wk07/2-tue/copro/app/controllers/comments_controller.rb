class CommentsController < ApplicationController
	def create
		redirect_to '/login' unless session[:user_id]
		comment = Comment.new
		comment.title = params[:title]
		comment.body = params[:body]
		comment.user_id = params[:user_id]
		comment.project_id = params[:project_id]

		if comment.save
			redirect_to "/projects/#{params[:project_id]}"
		else
			# render :new
			# redirect_to '/projects/#{params[:project_id]}'
			render :error_page
		end
	end
end
