class TngsController < ApplicationController
  before_action :set_tng, only: [:show, :edit, :update, :destroy]

  # GET /tngs
  # GET /tngs.json
  def index
    @tngs = Tng.all.group_by {|a| a.day}
  end

  # GET /tngs/1
  # GET /tngs/1.json
  def show
  end

  # GET /tngs/new
  def new
    @tng = Tng.new
  end

  # GET /tngs/1/edit
  def edit
  end

  # POST /tngs
  # POST /tngs.json
  def create
    @tng = Tng.new(tng_params)

    respond_to do |format|
      if @tng.save
        format.html { redirect_to @tng, notice: 'Tng was successfully created.' }
        format.json { render :show, status: :created, location: @tng }
      else
        format.html { render :new }
        format.json { render json: @tng.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tngs/1
  # PATCH/PUT /tngs/1.json
  def update
    respond_to do |format|
      if @tng.update(tng_params)
        format.html { redirect_to @tng, notice: 'Tng was successfully updated.' }
        format.json { render :show, status: :ok, location: @tng }
      else
        format.html { render :edit }
        format.json { render json: @tng.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tngs/1
  # DELETE /tngs/1.json
  def destroy
    @tng.destroy
    respond_to do |format|
      format.html { redirect_to tngs_url, notice: 'Tng was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tng
      @tng = Tng.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tng_params
      params.require(:tng).permit(:trainer_id, :discipline_id, :town_id, :hall, :day, :time)
    end
end
