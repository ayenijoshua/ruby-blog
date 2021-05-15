class CommentsController < ApplicationController
    http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy

    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path
    end


    def show
        @comment = Comment.find(params[:id])
        #@comments = @article.comments.all
    end

    def destroy
        @comment = Comment.find(params[:id])
        article_id = @comment.article_id
        @comment.destroy 
        redirect_to article_path(article_id)       
    end
    

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
        
    
end
