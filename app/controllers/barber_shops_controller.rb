class BarberShopsController < ApplicationController
  before_action :set_barber_shop, only: [:show, :edit, :update, :destroy]

  # GET /barber_shops
  # GET /barber_shops.json
  def index
    @barber_shops = BarberShop.all
  end

  # GET /barber_shops/1
  # GET /barber_shops/1.json
  def show
  end

  # GET /barber_shops/new
  def new
    @barber_shop = BarberShop.new
  end

  # GET /barber_shops/1/edit
  def edit
  end

  # POST /barber_shops
  # POST /barber_shops.json
  def create
    @barber_shop = BarberShop.new(barber_shop_params)

    respond_to do |format|
      if @barber_shop.save
        format.html { redirect_to @barber_shop, notice: 'Barber shop was successfully created.' }
        format.json { render :show, status: :created, location: @barber_shop }
      else
        format.html { render :new }
        format.json { render json: @barber_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barber_shops/1
  # PATCH/PUT /barber_shops/1.json
  def update
    respond_to do |format|
      if @barber_shop.update(barber_shop_params)
        format.html { redirect_to @barber_shop, notice: 'Barber shop was successfully updated.' }
        format.json { render :show, status: :ok, location: @barber_shop }
      else
        format.html { render :edit }
        format.json { render json: @barber_shop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barber_shops/1
  # DELETE /barber_shops/1.json
  def destroy
    @barber_shop.destroy
    respond_to do |format|
      format.html { redirect_to barber_shops_url, notice: 'Barber shop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barber_shop
      @barber_shop = BarberShop.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def barber_shop_params
      params.require(:barber_shop).permit(:code, :name, :business_name, :nit, :address, :city, :phone, :owner, :contact_name, :contact_phone1, :contact_phone2, :contact_email, :enable)
    end
end
