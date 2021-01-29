class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  def index
    @ideas = Idea.all
  end

  def new
    @idea = Idea.new
  end

  def create
    @idea = current_user.ideas.build(idea_params)
    if params[:back]
      render :new
    else
      if @idea.save
        redirect_to ideas_path, notice: "せんすの要を登録しました！"
      else
        render :new
      end
    end
  end

  def show
  end

  def edit
  end

  def update
    if @idea.update(idea_params)
      redirect_to ideas_path, notice: "せんすの要を編集しました！"
    else
      render :edit
    end
  end

  def destroy
    @idea.destroy
    redirect_to ideas_path, notice: "せんすを削除しました！"
  end

  def confirm
    @idea = current_user.ideas.build(idea_params)
    render :new if @idea.invalid?
  end

  private
  def idea_params
    params.require(:idea).permit(:title, :idea, :expected_power)
  end

  def set_idea
    @idea = Idea.find(params[:id])
  end
end
