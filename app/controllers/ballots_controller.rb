class BallotsController < ApplicationController

  def create
    # CR - this if/else needs to be refactored and you SHOULD NOT make assumptions about positioning in a database.  Either a case has a defendant and a plaintif or a case has a user with a role - search by role not position.
    # Case.find().find(role: 'plaintiff')
    if params[:role] == "plaintiff"
      user_id = Case.find(params[:case_id]).users[0].id
      Ballot.create(user_id: user_id, case_id: params[:case_id], role: params[:role])
      # CR -  make a current_case controller method on application controller
      # CR refactor to something like:
      #ballot = current_case.ballot.create()
      #ballot.plaintiff= current_case.plantiff
    end
    if params[:role] == "defendant"
      user_id = Case.find(params[:case_id]).users[1].id
      Ballot.create(user_id: user_id, case_id: params[:case_id], role: params[:role])
    end
    redirect_to :back
  end


end
