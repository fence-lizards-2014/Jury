class EvidencesController < ApplicationController

  def new

  end

  def create
    # CR refactor into a single statement use private method
    if params[:case_id] == ""
      @evidence = Evidence.create(argument: params["argument"], video_url: params["video_url"], photo_url: params["photo_url"], cases_user_id: params[:case_user_plaintiff])
      redirect_to dashboard_path
    else
      @evidence = Evidence.create(argument: params["argument"], video_url: params["video_url"], photo_url: params["photo_url"], cases_user_id: CasesUser.where(user_id: session[:id]).where(case_id: params[:case_id]).first.id)
      Case.update(params[:case_id], status: "active")
      redirect_to dashboard_path

    end
  end

end
