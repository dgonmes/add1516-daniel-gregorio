#!/usr/bin/ruby
# encoding: utf-8

#Daniel Gregorio González Mesa
system ("clear")
require 'rainbow'
comando = `whoami`
admin = comando.chop

#Are you root?

if admin !="root"
	puts Rainbow("No eres root").color(:red)
	exit
end
`touch state.running`
def controlar_procesos()
	pross = `cat procesos.txt`

	proceso = pross.split("\n")

	proceso.each do |fila| 		
		campo = fila.split(":")	
		spack = campo[0]
		listapro=`ps -e|grep #{campo[0]} | grep -v color ` 
			
		procesplit=spack.split("\n")
		listaprofiltrada=listapro.split("\n")						
											
		
		if campo[1]=="notice" or campo[1]=="n"
			if listaprofiltrada.count >=1								
				puts Rainbow("NOTICE:").color(:green)+"Proceso #{campo[0]} en ejecución"		
			end		
		end	
				
		if campo[1]=="kill" or campo[1]=="k"
			if listaprofiltrada.count >=1
					`killall #{campo[0]} 2> /dev/null`
					puts Rainbow("_KILL_:").red+"Proceso #{campo[0]} eliminado"	
			
			elsif listaprofiltrada.count ==0
				puts "El proceso #{campo[0]} no está en ejecución"			
			
			end	
		end				
	end 
end



while(File.exist? "state.running") do
  controlar_procesos()
  sleep(2)
end
