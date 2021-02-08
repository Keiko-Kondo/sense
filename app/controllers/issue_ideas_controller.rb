class IssueIdeasController < ApplicationController
  def create
    # IssueIdea.new(current_issue_id: , idea_id: )
    @issue_idea = IssueIdea.create(current_issue_id: @current_issue, idea_id: @idea.id )    
    @issue_idea.save
  end

  def new
  end

  def destroy
  end


end
