class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
def authorize_admin
    redirect_to root_path, alert: 'Access Denied' unless current_admin?
  end
