#!/usr/bin/ruby
# encoding: UTF-8

action=1
# ponemos action=1 para asignarle

if action==1 then
# este action==1 lleva dos == porque queremos que compare el valor de la variable,
# no es que lo estemos asignando de nuevo
	system("mkdir curso2")
	system("mkdir curso3")
	system("mkdir curso4")
	system("mkdir curso5")
	system("mkdir curso1/gtb -p")
	system("mkdir curso1/ssoo -p")
	system("mkdir curso1/fol -p")
	system("chmod 700 curso*/*")
else
	system("rm -r curso2")
	puts "carpetas eliminadas"
end
