class ArticlesController < ApplicationController
	before_action :authenticate_user!
	def index
		
	end

	def new
		@article = Article.new
	end

	def create
		if params
			@article = Article.new(article_params)
			@article.user_id = current_user.id
			logger.info @article.as_json
			if @article.save
				render action: "index" 
			else
				render @article.errors.full_messages
			end
		end
	end

	def destroy
	end

	def archives
	end

	private

	 def article_params
	 	params.require(:article).permit(:title, :contents, :image)
	 end
end
