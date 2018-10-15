class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  # GET /clientes
  # GET /clientes.json
  def index
    @clientes = Cliente.all
  end
  
  def consumir
    #client = Savon.client(wsdl: "https://www.ingface.net/ServiciosIngface/ingfaceWsServices?wsdl")
    #esponse = client.call(:nit_contribuyentes, message: { usuario: "DEMO", clave: "C2FDC80789AFAF22C372965901B16DF533A4FCB19FD9F2FD5CBDA554032983B0", nit: params[:nit] })
    #result = JSON.parse(response.body.to_json)
    #render html: "<h1>Hola Mundo</h1>" + 'pedro' + result['']
    #render :json => result['nit_contribuyentes_response']['return']
    render :json => helpers.consultar_nit(params[:nit])
  end

  def claro
    render :json => helpers.consultar_nit(params[:codigo])
  end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Cliente was successfully created.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Cliente was successfully updated.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Cliente was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:nit, :nombre, :direccion)
    end



end
