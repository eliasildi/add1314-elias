#!/usr/bin/ruby
# encoding: UTF-8


print "¿Qué quieres?"
action=gets.chomp()

if action=="subir" then
	system("git add *")
	system("git commit -m 'up all data files'")
	system("git push")
	puts "subido"
	
elsif action=="bajar" then
	system("git pull")
	puts "descargado con éxito"
else
	puts "<"+action+"> no es, prueba otra vez, hay miles de premios."
end
