class CurrentIssuesController < ApplicationController
before_action :set_current_issue, only: [:show, :edit, :update, :destroy]

  def index
    @current_issues = CurrentIssue.all
    @current_issues_address = CurrentIssue.all.select('title', 'address', 'latitude', 'longitude')

    gon.current_issues = @current_issues_address


  end

  def new
    @current_issue = CurrentIssue.new
  end

  def create
    @current_issue = current_user.current_issues.build(current_issue_params)
    if params[:back]
      render :new
    else
      if @current_issue.save
        redirect_to current_issues_path, notice: "課題を登録しました！"
      else
        render :new
      end
    end
  end

  def edit
  end

  def update
    if @current_issue.update(current_issue_params)
      redirect_to current_issues_path, notice: "課題を編集しました！"
    else
      render :edit
    end
  end

  def show
     @ideas = @current_issue.through_ideas
  end

  def destroy
    @current_issue.destroy
    redirect_to current_issues_path, notice: "課題を削除しました！"
  end

  def confirm
    @current_issue = current_user.current_issues.build(current_issue_params)
    render :new if @current_issue.invalid?
  end

  private
  def current_issue_params
    params.require(:current_issue).permit(:genre, :title, :issue, :taker, :giver, :idea, :address, :latitude, :longitude)
  end

  def set_current_issue
    @current_issue = CurrentIssue.find(params[:id])
  end
end
