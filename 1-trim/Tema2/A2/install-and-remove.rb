#!/usr/bin/ruby
# encoding: utf-8

#Daniel Gregorio González Mesa
system ("clear")

comando = `whoami`
admin = comando.chop

#Are you root?

if admin !="root"
	puts "No eres root"
	exit
end



soft = `cat software-list.txt`

software = soft.split("\n")

software.each do |fila| 		
	campo = fila.split(":")			
		spack = `dpkg --get-selections | grep -i -o #{campo[0]}`
		
		packsplit=spack.split("\n")
						
										
			if campo[1]=="install" or campo[1]=="i"
				if packsplit.count == 0								
					`apt-get -y install #{campo[0]}`
				end				
			end	
								
			if campo[1]=="remove" or campo[1]=="r"
				if packsplit.count != 0									
					`apt-get -y --purge remove #{campo[0]}`
					`apt-get clean -y #{campo[0]}`				
				end
			end
			
end

	
						
			
