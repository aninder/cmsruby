class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def slug_url page
    page.slug.present? ? page.slug : "/admin/pages/#{page.id}"
  end
  helper_method :slug_url
end
