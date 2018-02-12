class MatsController < ApplicationController
  before_action :set_mat, only: [:show, :edit, :update, :destroy]

  # GET /mats
  # GET /mats.json
  def index
    @mats = Mat.all
  end

  # GET /mats/1
  # GET /mats/1.json
  def show
  end

  # GET /mats/new
  def new
    @mat = Mat.new
  end

  # GET /mats/1/edit
  def edit
  end

  # POST /mats
  # POST /mats.json
  def create
    @mat = Mat.new(mat_params)

    respond_to do |format|
      if @mat.save
        format.html { redirect_to @mat, notice: 'Mat was successfully created.' }
        format.json { render :show, status: :created, location: @mat }
      else
        format.html { render :new }
        format.json { render json: @mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mats/1
  # PATCH/PUT /mats/1.json
  def update
    respond_to do |format|
      if @mat.update(mat_params)
        format.html { redirect_to @mat, notice: 'Mat was successfully updated.' }
        format.json { render :show, status: :ok, location: @mat }
      else
        format.html { render :edit }
        format.json { render json: @mat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mats/1
  # DELETE /mats/1.json
  def destroy
    @mat.destroy
    respond_to do |format|
      format.html { redirect_to mats_url, notice: 'Mat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mat
      @mat = Mat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mat_params
      params.require(:mat).permit(:nombre, :calif_1, :calif_2, :calif_3, :final, :ext_1, :ext_2, :esp, :semestre)
    end
end
