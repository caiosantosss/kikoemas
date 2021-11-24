class ApplicationController < ActionController::Base
  before_action :authenticate_user_or_counselor!
  include Pundit

  # Pundit: white-list approach.
  # after_action :verify_authorized, except: :index, unless: :skip_pundit?
  # after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  # rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  # def user_not_authorized
  #   flash[:alert] = "You are not authorized to perform this action."
  #   redirect_to(root_path)
  # end

  private

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end

  def authenticate_user_or_counselor!
    if current_counselor
      authenticate_counselor!
    else
      authenticate_user!
    end
  end

  def after_sign_in_path_for(user)
    if user.is_a?(Counselor)
      counselors_dashboard_path
    else
      root_path
    end
  end
end
