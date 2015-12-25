## A2: Clientes ligeros ##



Antes de iniciar la máquina server le he agregado una segunda tarjeta de red en modo interna, esta será la que utilice para conectase con los clientes.

![Alt text](./1.png)
Ahora le asigno una IP estática a la tarjeta de red principal del servidor y a la segunda tarjeta que será la interna.
![Alt text](./2.png)
![Alt text](./7.png)

Aquí estoy creando los usuarios que posteriormente se conectaran al servidor desde un cliente utilizando la imagen creada.
![Alt text](./3.png)

Comprobación de los comandos solicitados.
![Alt text](./8.png)

Para comenzar la instalación del servidor ltsp utilizo el siguiente comando.
![Alt text](./4.png)
Para crear la imagen que utilizaran los clientes
![Alt text](./5.png)
Comprobación de que la imagen se ha creado perfectamente.
![Alt text](./9.png)
Edito el fichero SSh.conf para permitir la conexión con el profesor a la máquina servidor.
![Alt text](./6.png)

Una vez tengo la imagen creada procedo a configurar una máquina cliente donde el adaptador de red lo pondré en modo interno y en las opciones de arranque como principal la tarjeta de red.
![Alt text](./10.png)

En el siguiente enlace se puede ver como con las dos maquina iniciadas y utilizando uno de los usuarios creados se conecta perfectamente.
[Funcionamiento cliente LTSP](https://www.youtube.com/watch?v=lKsThv2gAAM)
