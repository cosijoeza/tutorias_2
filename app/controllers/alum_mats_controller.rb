class AlumMatsController < ApplicationController
  before_action :set_alum_mat, only: [:show, :edit, :update, :destroy]

  # GET /alum_mats
  # GET /alum_mats.json
  def index
    @alum_mats = AlumMat.all
  end

  # GET /alum_mats/1
  # GET /alum_mats/1.json
  def show
  end

  # GET /alum_mats/new
  def new
    @alum_mat = AlumMat.new
  end

  # GET /alum_mats/1/edit
  def edit
  end

  # POST /alum_mats
  # POST /alum_mats.json
  def create
    @alum_mat = AlumMat.new(alum_mat_params)

    respond_to do |format|
      if @alum_mat.save
        format.html { redirect_to @alum_mat, notice: 'Alum mat was successfully created.' }
        format.json { render :show, status: :created, location: @alum_mat }
      else
        format.html { render :new }
        format.json { render json: @alum_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alum_mats/1
  # PATCH/PUT /alum_mats/1.json
  def update
    respond_to do |format|
      if @alum_mat.update(alum_mat_params)
        format.html { redirect_to @alum_mat, notice: 'Alum mat was successfully updated.' }
        format.json { render :show, status: :ok, location: @alum_mat }
      else
        format.html { render :edit }
        format.json { render json: @alum_mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alum_mats/1
  # DELETE /alum_mats/1.json
  def destroy
    @alum_mat.destroy
    respond_to do |format|
      format.html { redirect_to alum_mats_url, notice: 'Alum mat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alum_mat
      @alum_mat = AlumMat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alum_mat_params
      params.require(:alum_mat).permit(:alum_id, :mat_id)
    end
end
