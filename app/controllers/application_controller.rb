class ApplicationController < ActionController::Base
  private

  def after_sign_in_path_for(resource_or_scope)
    demo_path
  end
end
