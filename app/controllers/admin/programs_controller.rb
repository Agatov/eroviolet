class Admin::ProgramsController < AdminController
  def index
    @programs = Program.order(:id)
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new params[:program]

    if @program.save
      redirect_to admin_programs_path
    else
      render :new
    end
  end

  def edit
    @program = Program.find params[:id]
  end

  def update
    @program = Program.find params[:id]

    if @program.update_attributes(params[:program])
      redirect_to admin_programs_path
    else
      render :edit
    end
  end

  def destroy
    @program = Program.find params[:id]
    @program.destroy
    redirect_to :back
  end

end