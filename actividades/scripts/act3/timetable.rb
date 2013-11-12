#!/usr/bin/ruby
#
# este ira en /usr/local/bin y sera llamado desde .bashhrc
#
#iniciamos el programa
TIMECOMMAND='date +%H%M' #creamos una variable para almacenar la fecha
EXITCOMMAND='exit' #EXITCOMMAND SIRVE PARA windows por lo que lo usaremos





puts "Ejecutando #{$0}..." #nos muestra un mernsaje al iniciarse

sTime=TIMECOMMAND
puts "HoraMinuto=#{sTime}" #Mostramos la fecha hora

if (sTime < "1040" and sTime < "1115" ) then
		puts "Vete asl recreo!!!"
		system (EXITCOMMAND)
end

