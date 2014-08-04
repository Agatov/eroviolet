class GirlsController < ApplicationController

  def index
    @girls = Girl.order('available_today desc')
  end

  def show
    @girl = Girl.find params[:id]
  end
end