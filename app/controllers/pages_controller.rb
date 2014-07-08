class PagesController < ApplicationController

# CR why main and not default of index
  def main
    @user = User.new
  end

# CR what is this action for ? logout?
  def test

  end

  def dashboard
    if session[:id]
      # CR use an application controller method for current_user / and a helper
  	  @target_user = User.find(session[:id])
      @my_cases = User.find(session[:id]).cases.order('status').order('created_at')

      @my_invites = User.find(session[:id]).cases.where(status: "pending")

    end
    # Create scopes for this on the model
      @active_cases = Case.where(status: "active")
      @closed_cases = Case.where(status: "closed")
  end

end
