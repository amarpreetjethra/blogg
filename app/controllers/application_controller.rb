class ApplicationController < ActionController::Base
  protect_from_forgery
  def index
  @articles = Article.all
  end
  
end
