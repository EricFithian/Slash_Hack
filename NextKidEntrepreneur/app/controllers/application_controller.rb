class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.admin > 0
      admin_path
    elsif current_user.admin > 1
      super_admin_path
    else
      user_path
    end
  end
end
