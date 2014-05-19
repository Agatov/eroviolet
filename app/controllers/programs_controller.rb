class ProgramsController < ApplicationController
  def index
    @programs = Program.programs_only.order(:price)
    @extras = Program.extras_only.order(:price)
  end
end