# FDP

Es una herramienta de livecoding basada en processing que sirve para generar visuales mediante mensajes osc que envia FoxDot. 


## Cómo funciona?

Esta libreria conecta Foxdot y Processing Por medio del mensajes a través del protocolo osc el cual es posible en ambos softwares.

## Inatalación

> Descargar e instalar Processing https://processing.org/download/

> Descargar e instalar FoxDot https://noisk8.github.io/FoxDot.io/instal.html


Para obtener esta comunicación primero debemos alterar el archivo ServerManager.py de FoxDot [ubicado en la carpeta lib de Foxdot].

En Linux

el archivo ServerManager.py está ubicado en /usr/local/lib/python2.7/dist-packages/FoxDot/lib 

En este archivo vamos a generar el espacio para indicarle a foxdot que lanze mensaje osc por determinado puerto y host.

'podemos mantener el archivo tal y como está y solo debemos de anexar un par de lineas que le indicaran a foxdot cómo debe de salir por osc.' y hacer los sigiente.


Abajo de la linea 195 se agreran estas linea

> self.myOSC = OSCClient()

> self.myOSC.connect( ("127.0.0.1", 12345) )

y el otro cambio es poner la siguiente linea abajo de la 280 del archivo

> self.myOSC.send( osc_message )

Ahora Foxdot enviará mensaje osc a este sitio "127.0.0.1", y por este puerto 12345

El otro componente que necesitamos para hacer la comunicación es codigo de processing que interprete visualmente los mensajes osc que lanzan los sonidos de FoxDot.

El cual contiene indicaciones cómo crear un evento osc y recibir mensajes por determinado puerto, ademas de mapear cirto tipo de visual por cada synthetizador de FoxDot. 

## Cómo empezar ?

Ejecutar FDP y luego ejecutar FoxDot 



### Nota 
En este ejemplo cada synthe llama una imagen, pero esto puede ser modificado si es el gusto.

## Cómo cambiar el llamado visual ?




### Dependencias 

En Processing instalar la libreria p5osc.


creado por Kodamas y Noisk8 inspiradas en los ejercicios de RUCO   2019





