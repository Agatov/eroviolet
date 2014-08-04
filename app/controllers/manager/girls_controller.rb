class Manager::GirlsController < ApplicationController

  layout 'manager'

  def index
    @girls = Girl.order(:id)
  end

  def update
    @girl = Girl.find params[:id]
    @girl.update_attributes params[:girl]
    redirect_to :back
  end
end