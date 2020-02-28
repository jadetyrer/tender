class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    case resource
    when User 
      user_dashboard_path
    when Worker 
      worker_dashboard_path
    end 
  end
end
