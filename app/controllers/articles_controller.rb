class ArticlesController < ApplicationController

  # blog index
  def index
    @articles = Article.all
  end

  # show article
  def show
    @article = Article.find(params[:id])
  end

  # display form to create new article
  def new
    @article = Article.new
  end

  # create a new article
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  # display form to edit article
  def edit
    @article = Article.find(params[:id])
  end

  # update article
  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  # destroy article
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to articles_path
  end

  # parameter required for form submission
  private
    def article_params
      params.require(:article).permit(:body, :title)
    end

  

  
  
end
