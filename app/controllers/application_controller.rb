class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :show_title

  def show_title
  	@show_title = Cinema.find_by_id(params[:id]).show.name unless Cinema.find_by_id(params[:id]).nil?
  end
end
