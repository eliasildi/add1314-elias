#!/usr/bin/ruby

param=ARGV.first
puts "Ejecutando <#{$0}>..."

def show_help
	puts "Forma de uso:"
	puts "* --lock , activar las restricciones SSH"
	puts "* --free , desactivar las restricciones SSH"
	
end

if param=='--lock' then
	system("sed -e 's/AllowUsers.*/AllowUsers super/g' sshd_config > sshd_config.system")
	system("cp sshd_config.system sshd_config")
	system('service ssh reload')
elsif param=='--free' then
	system("sed -e 's/AllowUsers.*/AllowUsers super, profesor/g' sshd_config > sshd_config.system")
	system("cp sshd_config.system sshd_config")
	system('service ssh reload')
else
	show_help
end
