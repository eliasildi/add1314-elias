#!/usr/bin/ruby

param=ARGV.first
puts "Ejecutando <#{$0}>..."

def show_help
	puts "Forma de uso:"
	puts "* --lock , activar las restricciones SSH"
	puts "* --free , desactivar las restricciones SSH"
	
end

if param=='--lock' then
	system('cp sshd_config.lock sshd_config.system')
	system('service ssh reload')
elsif param=='--free' then
	system('cp sshd_config.free sshd_config.system')
	system('service ssh reload')
else
	show_help
end
