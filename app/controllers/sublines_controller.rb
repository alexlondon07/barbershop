class SublinesController < ApplicationController
  before_action :set_subline, only: [:show, :edit, :update, :destroy]

  # GET /sublines
  # GET /sublines.json
  def index
    @sublines = Subline.all
  end

  # GET /sublines/1
  # GET /sublines/1.json
  def show
  end

  # GET /sublines/new
  def new
    @subline = Subline.new
  end

  # GET /sublines/1/edit
  def edit
  end

  # POST /sublines
  # POST /sublines.json
  def create
    @subline = Subline.new(subline_params)

    respond_to do |format|
      if @subline.save
        format.html { redirect_to @subline, notice: 'Subline was successfully created.' }
        format.json { render :show, status: :created, location: @subline }
      else
        format.html { render :new }
        format.json { render json: @subline.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sublines/1
  # PATCH/PUT /sublines/1.json
  def update
    respond_to do |format|
      if @subline.update(subline_params)
        format.html { redirect_to @subline, notice: 'Subline was successfully updated.' }
        format.json { render :show, status: :ok, location: @subline }
      else
        format.html { render :edit }
        format.json { render json: @subline.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sublines/1
  # DELETE /sublines/1.json
  def destroy
    @subline.destroy
    respond_to do |format|
      format.html { redirect_to sublines_url, notice: 'Subline was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subline
      @subline = Subline.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subline_params
      params.require(:subline).permit(:name, :code, :description, :line_id, :enable)
    end
end
