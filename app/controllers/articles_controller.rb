class ArticlesController < ApplicationController
	include ArticlesHelper
	def show
		@article = Article.find(params[:id])
    end
    def find
    end
    def new
    	@article = Article.new

	end
	def create
		  @article = Article.new
		  @article.title = params[:article][:title]
		  @article.body = params[:article][:body]
          @article.save
          redirect_to article_path(@article)

	end
	def destroy
		  @article = Article.find(params[:id])
          @article.destroy
          redirect_to articles_path

 	end
 	def edit
          @article = Article.find(params[:id])
    end
    def update
          @article = Article.find(params[:id])
  		  @article.update(article_params)

  		  redirect_to article_path(@article)
	end
end