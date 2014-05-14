class ApplicationController < ActionController::Base

  include ApplicationHelper
  protect_from_forgery

  before_filter :mobile_device?

  def index
    @girls = Girl.order(:id)
    @rooms = Room.order(:id)

    if params[:utm_source]
      session[:utm_source] = params[:utm_source]
    end

    set_meta_tags title: I18n.translate('site_title')
  end

  def job

  end

  def mobile_device?
    #request.format = :mobile

    #if mobile_browser? request.user_agent
    #  request.format = :mobile
    #end
  end
end
