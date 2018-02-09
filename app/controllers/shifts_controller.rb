class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]

  def index
    @shifts = Shift.all
    @shifts_date = @shifts.map { |shift| shift.start_date }
    return @shifts, @shifts_date
  end

  def show
  end

  def new
    if (params[:worker_id])
      @shift = Shift.new()
      @shift.worker_id = params[:worker_id]
    elsif (params[:shift])
      @shift = Shift.new(shift_params)
    else
      @shift = Shift.new
    end
  end

  def edit
  end

  def create
    @shift = Shift.new(shift_params)
    @shifts = Shift.where(start_date: @shift.start_date)

    respond_to do |format|
      if @shifts.count > 0
        flash[:alert] = "Date already assigned, please remove the shift before adding a new one"
        format.html { redirect_to shifts_url }
      elsif @shift.save
        format.html { redirect_to shifts_url, notice: 'Shift was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to shifts_url, notice: 'Shift was successfully updated.' }
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
    def set_shift
      @shift = Shift.find(params[:id])
    end

    def shift_params
      params.require(:shift).permit(:start_date, :worker_id, :planning_id)
    end
end
