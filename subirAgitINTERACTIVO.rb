#!/usr/bin/ruby
# encoding: UTF-8


puts "¿Qué quieres? "
action=gets.chomp()

if action=="subir" then
	system("git add *")
	system("git commit -m 'AUTO up all data files'")
	system("git push")
	puts "*********Subidoooooooooooooooooooooooooooo con éxitoooo****"
	
elsif action=="bajar" then
	system("git pull")
	puts "descargado con éxito"
else
	puts "<"+action+"> no es, prueba otra vez, hay miles de premios."
end
