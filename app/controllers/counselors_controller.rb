class CounselorsController < ApplicationController
  def dashboard
    @counselor = current_counselor
    authorize current_counselor
  end
end
