#!/usr/bin/ruby
# encoding: UTF-8

action=ARGV.first
puts action

if action=="crear" then
	system("mkdir curso2")
	system("mkdir curso3")
	system("mkdir curso4")
	system("mkdir curso5")
	system("mkdir curso1/gtb -p")
	system("mkdir curso1/ssoo -p")
	system("mkdir curso1/fol -p")
	system("chmod 700 curso*/*")
	
elsif action=="eliminar" then
	system("rm -r curso2")
	puts "carpetas eliminadas"
else
	puts "no entiendo <"+action+">"
end
