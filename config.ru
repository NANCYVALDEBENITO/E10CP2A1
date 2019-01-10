
require 'rack'
require 'byebug'
class MiPrimeraWebApp
  def call(env)
    #debugger
    if env['REQUEST_PATH'] == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    elsif env['REQUEST_PATH'] == '/index'
      [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['<h1>Estás en el Index!</h1>']]
    elsif env['REQUEST_PATH'] == '/otro'
      [200, { 'Content-Type' => 'text/html; charset=utf-8' }, ['<h1>Estás en otro landing!</h1>']]
		else
			[404, { 'Content-Type' => 'text/html' }, [ File.read('404.html') ]]

    end
  end
end
run MiPrimeraWebApp.new 
