class EvidencesController < ApplicationController

  def new

  end

  def create
    @evidence = Evidence.create(argument: params["argument"], video_url: params["video_url"], photo_url: params["photo_url"], cases_user_id: params["case_user_plaintiff"], user_id: params["user_id"], case_id: params["case_id"])
    redirect_to dashboard_path
  end

end

