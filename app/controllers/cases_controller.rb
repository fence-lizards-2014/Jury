class CasesController < ApplicationController
  # def new
  #   @my_case = Case.new
  # end

  def create
    # CR use a private method with strong params
    new_case = Case.create(case_params)
    # CR CasesUser is confusing try renaming to trial or something
    # CR Use proper AR commands - don't set id's
    @case_user_plaintiff = CasesUser.create(case_id: new_case.id, user_id: session[:id], party: "plaintiff")
#CR create a current_user method
  # trial = current_user.trials.create()
  # trial.case = new_case
    CasesUser.create(case_id: new_case.id, user_id: User.find_by_user_name(params[:defendant_user_name]).id, party: "defendant")
    redirect_to new_evidence_path(:case_user_plaintiff => @case_user_plaintiff)
  end

  def show

    @case = Case.find(params[:id])
  end
  private
# CR
  #def case_params
    # {title: params[:title], etc. }
  # end
end

