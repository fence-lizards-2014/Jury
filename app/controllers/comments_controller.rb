class CommentsController < ApplicationController




  def create
    # CR use private method and strong params
    Comment.create(content: params[:comment], case_id: params[:case_id], user_id: params[:user_id])
    redirect_to :back
  end



end

