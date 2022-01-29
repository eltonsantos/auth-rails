class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]

  load_and_authorize_resource

  # GET /cars or /cars.json
  def index
    if current_user.role == 'manager' or current_user.role == 'auditor'
      @q = Car.ransack(params[:q])
      @cars = @q.result
    else
      # @cars = Car.where(user_id: current_user)
      @q = Car.where(user_id: current_user).ransack(params[:q])
      @cars = @q.result
    end
  end

  # GET /cars/1 or /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new 
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars or /cars.json
  def create
    @car = Car.new(car_params)
    
    unless current_user.role == 'manager'
      @car.user_id = current_user.id
    end
    
    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: "Car was successfully created." }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1 or /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: "Car was successfully updated." }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1 or /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: "Car was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def car_params
      params.require(:car).permit(:name, :marca, :user_id)
    end
end
