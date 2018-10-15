module ApplicationHelper
	def prueba(dato)
		'hola '+ dato
	end
	def consultar_nit(nit)
		client = Savon.client(wsdl: "https://www.ingface.net/ServiciosIngface/ingfaceWsServices?wsdl")
	    response = client.call(:nit_contribuyentes, message: { usuario: "DEMO", clave: "C2FDC80789AFAF22C372965901B16DF533A4FCB19FD9F2FD5CBDA554032983B0", nit: nit })
	    result = JSON.parse(response.body.to_json)
	    #render html: "<h1>Hola Mundo</h1>" + 'pedro' + result['']
	    result['nit_contribuyentes_response']['return']
	end
end
