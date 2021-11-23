class ApplicationController < ActionController::Base
  # before_action :authenticate_user_or_counselor!
  class AuthorizationException < StandardError
  end

  rescue_from AuthorizationException do
    render text: "Access Denied", status: :unauthorized
  end

  protected

  def authenticate_user_or_counselor!
    unless user_signed_in? || counselor_signed_in?
      raise AuthorizationException.new
    end
  end
end
