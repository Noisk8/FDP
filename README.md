# FDP

Es una aplicación basada en (java) processing que permite generar visuales mediante mensajes [osc](https://es.wikipedia.org/wiki/OpenSound_Control) que envia FoxDot. 


## Cómo funciona FDP?

FDP utiliza sonidos que crean syntetizadores y reproductores de Foxdot para  enviar mensajes osc a processing, estos mensajes se  interpretan de forma visual con elementos como imagenes o esructuras geometricas.

[Que es? FoxDot?](http://foxdot.org/)

[Que es Processing?](https://processing.org/)


## Inatalación

> Descargar e instalar FoxDot https://noisk8.github.io/FoxDot.io/instal.html


Para obtener la comunicación entre FoxDot y Processing  debemos alterar el archivo  ServerManager.py  para indicarle a foxdot en que servidor y puerto va lanzar los mensajes osc.

El archivo ServerManager.py está ubicado en la ruta /FoxDot/lib/ 

En Linux ServerManager.py está ubicado en /usr/local/lib/python2.7/dist-packages/FoxDot/lib 


'podemos mantener el archivo tal y como está y solo debemos de anexar un par de lineas.

Abajo de la linea 195 se agreran estas linea

> self.myOSC = OSCClient()

> self.myOSC.connect( ("127.0.0.1", 12345) )

y el otro cambio es poner la siguiente linea abajo de la 280 del archivo

> self.myOSC.send( osc_message )

Ahora Foxdot enviará mensaje osc a este en el servidor "127.0.0.1", y por el puerto 12345

#### Aplicación WIP

## Descagar FDP

Linux-32 bits

Linux-64 bits

Linux-arm64 

linux-armv6hf

Windows-32 bits 

Windows-64 bits

Codigo fuente

## Cómo empezar ?

Primero debes iniciar foxdot y posteriormente FDP.


### Ejemplos 

https://www.youtube.com/watch?v=_R050qthYQY&t=301s

https://www.youtube.com/watch?v=ozPkVZb4iwI


creado por Kodamas y Noisk8 inspiradas en los ejercicios de RUCO   2019

WIP 





