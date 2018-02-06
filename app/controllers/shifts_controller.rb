class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  def index
    @shifts = Shift.all
  end

  def show
  end

  # GET /shifts/new
  def new
    @shift = Shift.new
  end

  # GET /shifts/1/edit
  def edit
  end

  def create
    @shift = Shift.new(shift_params)
    @shifts = Shift.where(start_date: @shift.start_date)

    respond_to do |format|
      if @shifts.count > 0
        format.html { redirect_to shifts_url  , notice: 'Date already assigned' }
      elsif @shift.save
        format.html { redirect_to shifts_url  , notice: 'Shift was successfully created.' }
        # format.json { render :show, status: :created, location: @shift }
      else
        format.html { render :new }
        # format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to @shift, notice: 'Shift was successfully updated.' }
        format.json { render :show, status: :ok, location: @shift }
      else
        format.html { render :edit }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to shifts_url, notice: 'Shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shift
      @shift = Shift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_params
      params.require(:shift).permit(:planning_id, :worker_id, :start_date)
    end
end
