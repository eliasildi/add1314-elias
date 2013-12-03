#!/usr/bin/ruby

puts "Ejecutando #{$0}..."
action=ARGV.first

def show_help
        puts "Modo de uso:"
        puts "  grupos , crea los grupos alumnos y profesores"
        puts "  usuarios , crea los usuarios y los añade a sus grupos"
        puts "  carpetas , crea en el home de profesor 1 las carpetas private, group, y public"
end

if action=='grupos' then
        system('groupadd alumnos')
        system('groupadd alumnos')
        puts "Grupos creados"

elsif action=='usuarios' then
        system('useradd -g alumnos -d /home/alumno1 -m -s /bin/bash alumno1')
        system('useradd -g alumnos -d /home/alumno2 -m -s /bin/bash alumno2')
        system('useradd -g profesores -d /home/profesor1 -m -s /bin/bash profesor1')
        system('useradd -g profesores -d /home/profesor2 -m -s /bin/bash profesor2')
        puts "usuarios creados y añadidos a los grupos correspondientes"
        
elsif action=='carpetas' then
        system('mkdir -p /home/profesor1/private')
        system('chmod -R 700 /home/profesor1/private')
        system('mkdir -p /home/profesor1/group')
        system('chmod -R 770 /home/profesor1/group')        
        system('mkdir -p /home/profesor1/public')
        system('chmod -R 775 /home/profesor1/public')          
        puts "carpetas creadas en home/profesor1" 
else
        show_help
end
