class RatingsController < ApplicationController
  
  http_basic_authenticate_with name: "inicio", password: "secreto", only: :destroy
  
  def index
    
  end

  def new
    @article = Article.find(params[:article_id])
    @rating = Rating.new(article: @article)

  end

  def create
    @article = Article.find(params[:article_id])
    @rating = Rating.new(rating_params)
    @rating.article = @article
    
    if @rating.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end

  end

private
    def rating_params
      params.require(:rating).permit(:value)
    end

end