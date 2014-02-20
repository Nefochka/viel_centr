module Redirects
  extend ActiveSupport::Concern

  def remember_back_location
    session[:back_location] = request.url
  end

  def redirect_back_or_default(default)
    redirect_to(session[:back_location] || default)
    session.delete(:back_location)
  end


end
