class Admin::Girls::CommentsController < AdminController
  def index
    @girl = Girl.find params[:girl_id]
    @comments = @girl.comments
  end

  def edit
    @girl = Girl.find params[:girl_id]
    @comment = Comment.find params[:id]
  end

  def update
    @girl = Girl.find params[:girl_id]
    @comment = Comment.find params[:id]

    if @comment.update_attributes params[:comment]
      redirect_to admin_girl_comments_path(@girl)
    else
      render :edit
    end
  end

  def destroy
    @comment = Comment.find params[:id]
    @comment.destroy
    redirect_to :back
  end
end