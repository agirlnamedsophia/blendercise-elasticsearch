class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # around_action { |&block| Chewy.atomic(&block) }
end
