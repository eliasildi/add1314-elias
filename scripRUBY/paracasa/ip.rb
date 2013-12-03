#!/usr/bin/ruby

puts "Ejecutando #{$0}..."
action=ARGV.first

def show_help
        puts "Modo de uso:"
        puts "  static10  , ip suministrada 172.16.109.10"
        puts "  static110 , ip suministrada 172.16.109.110"
        puts "  static210 , ip suministrada 172.16.109.210"
        puts "  dinamic , ip suministrada por DHCP"
        puts "  status , para saber su estado"
end

if action=='dinamic' then
        system('cp /etc/network/dinamic /etc/network/interfaces')
        puts "ip suministrada por DHCP"
        status="dinamic"

elsif action=='static10' then
        system('cp /etc/network/interface10 /etc/network/interfaces')
        puts "ip establecida 172.16.109.10"
        status="static 172.16.109.10"

elsif action=='static110' then
        system('cp /etc/network/interface110 /etc/network/interfaces')
        puts "ip establecida 172.16.109.110"
        status="static 172.16.109.110"
        
elsif action=='static210' then
        system('cp /etc/network/interface210 /etc/network/interfaces')
        puts "ip establecida 172.16.109.210"
        status="static 172.16.109.210"
        
else
        show_help
end 
        
if action=='status' then
		puts "Ip is " + status       
end        

