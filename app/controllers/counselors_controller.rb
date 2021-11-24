class CounselorsController < ApplicationController
  def dashboard
    @counselor = policy_scope(Counselor).find(current_user.id)
    authorize current_user
  end
end
