#!/usr/bin/ruby
# encoding: UTF-8

action=ARGV.first
puts action

if action=="subir" then
	system("git add *")
	system("git commit -m 'update repo auto'")
	system("git push")
	puts "subido"
	
elsif action=="bajar" then
	system("git pull")
	puts "descargado con éxito"
else
	puts "<"+action+"> no es, prueba otra vez, hay miles de premios."
end
