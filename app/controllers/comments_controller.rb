class CommentsController < ApplicationController
  before_action :set_future_vision, only: [:create, :edit, :update]
   def create
     @comment = @future_vision.comments.build(comment_params)
     respond_to do |format|
       if @comment.save
         format.js { render :index }
       else
         format.html { redirect_to future_vision_path(@future_vision), notice: '投稿できませんでした...' }
       end
     end
   end
   def edit
     @comment = @future_vision.comments.find(params[:id])
     respond_to do |format|
       flash.now[:notice] = 'コメントの編集中'
       format.js { render :edit }
     end
   end
   def update
     @comment = @future_vision.comments.find(params[:id])
       respond_to do |format|
         if @comment.update(comment_params)
           flash.now[:notice] = 'コメントが編集されました'
           format.js { render :index }
         else
           flash.now[:notice] = 'コメントの編集に失敗しました'
           format.js { render :edit_error }
         end
       end
   end

   def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    respond_to do |format|
      flash.now[:notice] = 'コメントが削除されました'
      format.js { render :index }
    end
  end

   private
   def comment_params
     params.require(:comment).permit(:future_vision_id, :content)
   end
   def set_future_vision
     @future_vision = FutureVision.find(params[:future_vision_id])
   end
 end
