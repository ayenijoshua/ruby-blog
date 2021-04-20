class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    #respond_to :html
    # respond_to do |format|
    #   format.html { index }
    # end
  end
end
