class CurrentIssuesController < ApplicationController
  def index
    @current_issues = CurrentIssue.all
  end

  def new
    @current_issue = CurrentIssue.new
  end

  def create
    @current_issue = CurrentIssue.new(current_issue_params)
  if @current_issue.save
    redirect_to current_issues_path, notice: "課題を登録sました！"
  else
    render :new
  end
end


  def show
    @current_issue = CurrentIssue.find(params[:id])
  end

  private
  def current_issue_params
    params.require(:current_issue).permit(:genre, :title, :issue, :taker, :giver, :idea, :address, :latitude, :longitude)
  end
end
