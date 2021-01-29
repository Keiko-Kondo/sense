class FutureVisionsController < ApplicationController
before_action :set_future_vision, only: [:show, :edit, :update, :destroy]

  def index
    @future_visions = FutureVision.all
  end

  def new
    @future_vision = FutureVision.new
  end

  def create
    @future_vision = current_user.future_visions.build(future_vision_params)
    if params[:back]
      render :new
    else
      if @future_vision.save
        redirect_to future_visions_path, notice: "ビジョンを作成しました！"
      else
        render :new
      end
    end
  end

  def show
    @comments = @future_vision.comments
    @comment = @future_vision.comments.build
  end

  def edit
  end

  def update
    if @future_vision.update(future_vision_params)
      redirect_to future_visions_path, notice: "ビジョンを編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @future_vision.destroy
    redirect_to future_visions_path, notice: "ビジョンを削除しました！"
  end

  def confirm
    @future_vision = current_user.future_visions.build(future_vision_params)
    render :new if @future_vision.invalid?
  end

  private

  def future_vision_params
    params.require(:future_vision).permit(:genre, :title, :vision, :expected, :possible_method, :address, :latitude, :longitude)
  end

  def set_future_vision
    @future_vision = FutureVision.find(params[:id])
  end
end
