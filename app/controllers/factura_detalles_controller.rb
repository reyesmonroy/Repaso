class FacturaDetallesController < ApplicationController
  before_action :set_factura_detalle, only: [:show, :edit, :update, :destroy]

  # GET /factura_detalles
  # GET /factura_detalles.json
  def index
    @factura_detalles = FacturaDetalle.all
  end

  # GET /factura_detalles/1
  # GET /factura_detalles/1.json
  def show
  end

  # GET /factura_detalles/new
  def new
    @factura_detalle = FacturaDetalle.new
  end

  # GET /factura_detalles/1/edit
  def edit
  end

  # POST /factura_detalles
  # POST /factura_detalles.json
  def create
    @factura_detalle = FacturaDetalle.new(factura_detalle_params)
    @factura = @factura_detalle.factura

    respond_to do |format|
      if @factura_detalle.save
        format.html { redirect_to @factura_detalle.factura, notice: 'Factura detalle was successfully created.' }
        format.json { render :show, status: :created, location: @factura_detalle }
      else
        format.html { render '/facturas/show' }
        format.json { render json: @factura_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /factura_detalles/1
  # PATCH/PUT /factura_detalles/1.json
  def update
    respond_to do |format|
      if @factura_detalle.update(factura_detalle_params)
        format.html { redirect_to @factura_detalle, notice: 'Factura detalle was successfully updated.' }
        format.json { render :show, status: :ok, location: @factura_detalle }
      else
        format.html { render :edit }
        format.json { render json: @factura_detalle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /factura_detalles/1
  # DELETE /factura_detalles/1.json
  def destroy
    @factura_detalle.destroy
    respond_to do |format|
      format.html { redirect_to @factura_detalle.factura, notice: 'Factura detalle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_factura_detalle
      @factura_detalle = FacturaDetalle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def factura_detalle_params
      params.require(:factura_detalle).permit(:factura_id, :cantidad, :producto_id, :precio, :total)
    end
end
