class ClassSeatsController < ApplicationController
  before_action :set_class_seat, only: [:show, :edit, :update, :destroy]

  # GET /class_seats
  # GET /class_seats.json
  def index
    @class_seats = ClassSeat.all
  end

  # GET /class_seats/1
  # GET /class_seats/1.json
  def show
  end

  # GET /class_seats/new
  def new
    @class_seat = ClassSeat.new
  end

  # GET /class_seats/1/edit
  def edit
  end

  # POST /class_seats
  # POST /class_seats.json
  def create
    @class_seat = ClassSeat.new(class_seat_params)

    respond_to do |format|
      if @class_seat.save
        format.html { redirect_to @class_seat, notice: 'Class seat was successfully created.' }
        format.json { render :show, status: :created, location: @class_seat }
      else
        format.html { render :new }
        format.json { render json: @class_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /class_seats/1
  # PATCH/PUT /class_seats/1.json
  def update
    respond_to do |format|
      if @class_seat.update(class_seat_params)
        format.html { redirect_to @class_seat, notice: 'Class seat was successfully updated.' }
        format.json { render :show, status: :ok, location: @class_seat }
      else
        format.html { render :edit }
        format.json { render json: @class_seat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /class_seats/1
  # DELETE /class_seats/1.json
  def destroy
    @class_seat.destroy
    respond_to do |format|
      format.html { redirect_to class_seats_url, notice: 'Class seat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_class_seat
      @class_seat = ClassSeat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def class_seat_params
      params.require(:class_seat).permit(:class_name, :price, :food_service, :Seat_type, :leg_room)
    end
end
