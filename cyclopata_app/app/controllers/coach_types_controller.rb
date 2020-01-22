class CoachTypesController < ApplicationController
  before_action :set_coach_type, only: [:show, :edit, :update, :destroy]

  # GET /coach_types
  # GET /coach_types.json
  def index
    @coach_types = CoachType.all
  end

  # GET /coach_types/1
  # GET /coach_types/1.json
  def show
  end

  # GET /coach_types/new
  def new
    @coach_type = CoachType.new
  end

  # GET /coach_types/1/edit
  def edit
  end

  # POST /coach_types
  # POST /coach_types.json
  def create
    @coach_type = CoachType.new(coach_type_params)

    respond_to do |format|
      if @coach_type.save
        format.html { redirect_to coach_types_path, notice: 'Coach type was successfully created.' }

      else
        format.html { render :new }
        format.json { render json: @coach_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coach_types/1
  # PATCH/PUT /coach_types/1.json
  def update
    respond_to do |format|
      if @coach_type.update(coach_type_params)
        format.html { redirect_to coach_types_path, notice: 'Coach type was successfully updated.' }
        format.json { render :show, status: :ok, location: @coach_type }
      else
        format.html { render :edit }
        format.json { render json: @coach_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coach_types/1
  # DELETE /coach_types/1.json
  def destroy
    @coach_type.destroy
    respond_to do |format|
      format.html { redirect_to coach_types_url, notice: 'Coach type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def delete_coach_type
    @coach_type = CoachType.find(params[:id].to_i)
    if  @coach_type.destroy
      render json: {done:true}
    end

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coach_type
      @coach_type = CoachType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coach_type_params
      params.require(:coach_type).permit(:name)
    end
end
