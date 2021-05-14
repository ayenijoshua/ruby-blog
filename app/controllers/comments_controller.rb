class CommentsController < ApplicationController

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path
    end

    def show
        @article = Article.find(params[:id])
        @comments = @article.comments.all
    end

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body)
        end
        
    
end
