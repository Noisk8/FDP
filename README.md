# FDP

Es una herramienta de livecoding basada en processing que permite generar visuales mediante mensajes [osc](https://es.wikipedia.org/wiki/OpenSound_Control) que envia FoxDot. 


[Que es? FoxDot?](http://foxdot.org/)

[Que es Processing?](https://processing.org/)


## Cómo funciona FDP?

FDP utiliza los syntetizadores y reproductores de Foxdot para que processing interprete de forma visual ya sea con imagenes u otro elemento visual de processing como figuras geometricas.


## Inatalación

> Descargar e instalar Processing https://processing.org/download/

> Descargar e instalar FoxDot https://noisk8.github.io/FoxDot.io/instal.html


Para obtener la comunicación entre FoxDot y Processing  debemos alterar el archivo  ServerManager.py  para indicarle a foxdot cual va ser el servidor y el puerto, ubicado en /FoxDot/lib/ 

En Linux ServerManager.py está ubicado en /usr/local/lib/python2.7/dist-packages/FoxDot/lib 


'podemos mantener el archivo tal y como está y solo debemos de anexar un par de lineas que le indicaran a foxdot cómo debe de salir por osc.' y hacer los sigiente.


Abajo de la linea 195 se agreran estas linea

> self.myOSC = OSCClient()

> self.myOSC.connect( ("127.0.0.1", 12345) )

y el otro cambio es poner la siguiente linea abajo de la 280 del archivo

> self.myOSC.send( osc_message )

Ahora Foxdot enviará mensaje osc a este en el servidor "127.0.0.1", y por el puerto 12345

El otro componente que necesitamos para hacer la comunicación es un codigo de processing que cree un cliente osc que se va conectar al servidor previamente creado, así procesing podrá interprete visualmente los mensajes osc que lanzan los sonidos de FoxDot.


## Cómo empezar ?

Después de tener Foxdot y Processing instalado, debes de arrancar foxdot y  posteriormente FDP.



### Nota 
En este ejemplo cada synthe llama una imagen, pero esto puede ser modificado si es el gusto.

## Cómo cambiar el llamado visual ?


### Ejemplos 

https://www.youtube.com/watch?v=_R050qthYQY&t=301s

https://www.youtube.com/watch?v=ozPkVZb4iwI


creado por Kodamas y Noisk8 inspiradas en los ejercicios de RUCO   2019

WIP 





