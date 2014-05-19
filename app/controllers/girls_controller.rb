class GirlsController < ApplicationController

  def index
    @girls = Girl.order('updated_at desc')
  end

  def show
    @girl = Girl.find params[:id]
  end
end