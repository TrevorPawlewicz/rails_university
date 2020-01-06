class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # expose methods to the view (only helper methods can do that)
  helper_method :current_user, :logged_in?
  
  # check in user is logged in:
  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    !!current_user
  end
end
