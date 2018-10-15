module ClientesHelper
<<<<<<< HEAD
 def consumo(valor)
    client = Savon.client(wsdl: "https://www.ingface.net/ServiciosIngface/ingfaceWsServices?wsdl")
    response = client.call(:nit_contribuyentes, message: { usuario: "DEMO", clave: "C2FDC80789AFAF22C372965901B16DF533A4FCB19FD9F2FD5CBDA554032983B0", nit: valor })
    result = JSON.parse(response.body.to_json)
    #render html: "<h1>Hola Mundo</h1>" + 'pedro' + result.to_s
    render :json => result['nit_contribuyentes_response']['return']
  end
=======
	
>>>>>>> d8e772a637f22eb48ba5b3a01d93e60f5475d2b6
end
