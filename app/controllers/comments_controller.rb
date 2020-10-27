class CommentsController < ApplicationController
    def create
        @topic=Topic.find(params[:topic_id])
        @comment=current_user.comments.new(comment_params)
        
        if @comment.save
            redirect_to [@topic]
        else
            render `topics/show`
        end
    end
    
    private
    def comment_params
        params.require(:comment).permit(:body).merge(topic_id: params[:topic_id])
    end
    
end
