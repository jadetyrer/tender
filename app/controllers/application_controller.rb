class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    if resource.is_a?(Worker)
      worker_dashboard_path
    end 
  end
  def after_sign_in_path_for(resource)
    if resource.is_a?(User)
      user_dashboard_path
    end 
  end
end
