class IdeasController < ApplicationController

  def index
  end

  def new
    @idea = Idea.new
  end

  def create
    Idea.create(title: params[:idea][:title], idea: params[:idea][:idea], expected_power: params[:idea][:expected_power])
    redirect_to new_idea_path
  end
end
