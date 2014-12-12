class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  ActiveRecord::Base.record_timestamps = false
  protect_from_forgery with: :exception
end
