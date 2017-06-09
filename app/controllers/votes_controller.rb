class VotesController < ApplicationController

  def create
    vote = Vote.new (user: current_user, question: @question, is_up: params[:is_up])
    if vote.save
      flash[:notice] = 'Thanks for voting!'
    else
      flash[:alert] = vote.pretty_errors
    end
    redirect_to @question
  end

  def update

  end

  def destroy

  end

  private

  def find_question
    @question = Question.find(params[:question_id])
  end

  def find_vote
    @vote = Vote.find(params[:id])
  end

end
