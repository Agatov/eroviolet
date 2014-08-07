class Girls::CommentsController < ApplicationController
  def create
    @girl = Girl.find params[:girl_id]
    @comment = Comment.new params[:comment]

    if @comment.save
      @girl.comments << @comment
    end

    redirect_to :back
  end
end