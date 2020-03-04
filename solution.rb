require 'sinatra'

get '/' do
  @permiso = request.env['HTTP_PERMISO']
  @permiso == "soy-un-token-secreto" ? "Si lo logramos!" : "Sin Permiso"
end