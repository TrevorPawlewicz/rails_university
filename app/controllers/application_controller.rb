class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # have this method fire before all other methods inherenting from ApplicationController
  before_action :require_user

  # expose methods to the view (only helper methods can do that)
  helper_method :current_user, :logged_in?

  # check in user is logged in:
  def current_user
    @current_user ||= Student.find(session[:student_id]) if session[:student_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:notice] = "You must be logged in to perform that action."
      redirect_to(login_path);
    end
  end
end
