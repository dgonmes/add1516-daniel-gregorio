#!/usr/bin/ruby
# encoding: utf-8

#Daniel Gregorio González Mesa

system ("clear")

comando = `whoami`
admin = comando.chop

#Comprobar si eres root

if admin !="root"
	puts "No eres root"
	exit
end

users = `cat userslist.txt`

userlist = users.split("\n")

userlist.each do |fila| 		
	campo = fila.split(":")
	if campo[2] ==""
		puts "El usuario #{campo[0]} no tiene email"
	else
		if campo[4] =="add"	
			`useradd -d /home/#{campo[0]} -m -s /bin/bash #{campo[0]} 2> /dev/null`
				
		end
		
		if campo[4] =="delete"	
			`userdel -r #{campo[0]} 2> /dev/null`
						
		end
	end
end
