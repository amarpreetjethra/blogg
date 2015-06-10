class ArticlesController < ApplicationController
	include ActiveModel::MassAssignmentSecurity
	attr_accessible :body, :title
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
  flash.notice = "Article '#{@article.title}' Created!"
  redirect_to article_path(@article)

end
	
	def destroy
		  @article = Article.find(params[:id])
          @article.destroy
          flash.notice = "Article '#{@article.title}' Destroyed!"
          redirect_to articles_path

 	end
 	def edit
  @article = Article.find(params[:id])
end
   def update
    @article = Article.find params[:id]
    if @article.update_attributes(article_params)
      flash.notice = "Article '#{@article.title}' Updated!"
      redirect_to article_path(@article)
    else
      render :edit
    end
  end
  
  
  
end
