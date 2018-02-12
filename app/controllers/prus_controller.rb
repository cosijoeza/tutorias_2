class PrusController < ApplicationController
  before_action :set_pru, only: [:show, :edit, :update, :destroy]

  # GET /prus
  # GET /prus.json
  def index
    @prus = Pru.all
  end

  # GET /prus/1
  # GET /prus/1.json
  def show
  end

  # GET /prus/new
  def new
    @pru = Pru.new
  end

  # GET /prus/1/edit
  def edit
  end

  # POST /prus
  # POST /prus.json
  def create
    @pru = Pru.new(pru_params)

    respond_to do |format|
      if @pru.save
        format.html { redirect_to @pru, notice: 'Pru was successfully created.' }
        format.json { render :show, status: :created, location: @pru }
      else
        format.html { render :new }
        format.json { render json: @pru.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prus/1
  # PATCH/PUT /prus/1.json
  def update
    respond_to do |format|
      if @pru.update(pru_params)
        format.html { redirect_to @pru, notice: 'Pru was successfully updated.' }
        format.json { render :show, status: :ok, location: @pru }
      else
        format.html { render :edit }
        format.json { render json: @pru.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prus/1
  # DELETE /prus/1.json
  def destroy
    @pru.destroy
    respond_to do |format|
      format.html { redirect_to prus_url, notice: 'Pru was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pru
      @pru = Pru.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pru_params
      params.require(:pru).permit(:foto)
    end
end
