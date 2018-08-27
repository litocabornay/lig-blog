class BlogController < ApplicationController

	def index
		@articles = Article.all
	end

	def show
		@article = Article.find(params[:id])
	end

	def archives
		@articles = Article.paginate(:page => params[:page], :per_page => 5)
	end
end
