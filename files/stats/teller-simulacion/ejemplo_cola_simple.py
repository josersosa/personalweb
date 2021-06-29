'''
Ejemplo de un sistema simple de colas
Se tiene un servidor con capacidad k=1 que atiende unos clientes durante m=2 horas
Los clientes van llegando con tiempo entre llegadas exponencial con media tita_1=2.5 minutos
Cada cliente es atendido con tiempo exponencial con media tita_2=2 minutos
Si un cliente llega y el servidor esta ocupado, el cliente se encola. Cuando un cliente sale del
servicio se notifica a la cola para ver si hay un cliente en cola para atender y se atiende.
'''
#librerias a usar
from SimPy.SimulationTrace import *
from random import *

#variables globales
k = 1
m = 2 #en horas
tita_1 = 2.5 #en minutos
tita_2 = 2 #en minutos
servidor = Resource(capacity=k,name="Servidor")

#componentes activos de la simulacion

'''
Clase que representa al proceso que genera los clientes durante la simulacion, 
genera un cliente y luego espera el tiempo exponencial para el proximo
'''
class GeneradorClientes(Process):
  def enviar_clientes(self):
    i = 1
    while True:
      cliente = Cliente(name="Cliente %d"%(i))
      activate(cliente,cliente.solicitar_servicio()) #llamar asincronicamente a solicitar_servicio
      tiempo_para_proximo_cliente = expovariate(1./tita_1)
      yield hold,self,tiempo_para_proximo_cliente #esperar ese tiempo
      i = i+1

'''
Clase que representa el proceso un cliente
'''
class Cliente(Process):
  def solicitar_servicio(self):
    yield request,self,servidor #solicitar el servidor, si esta ocupado se encola y se bloquea
    tiempo_de_mi_servicio = expovariate(1./tita_2)
    yield hold,self,tiempo_de_mi_servicio #esperar ese tiempo
    yield release,self,servidor #libera el servidor, si hay encolados saca el primero y lo atiende

#programa principal
initialize() #inicializa la simulacion (reloj en 0)
generador = GeneradorClientes(name="Generador") #instanciando el generador
activate(generador,generador.enviar_clientes()) #llamada a enviar_clientes asincronico / planificado
simulate(until=m*60) #simular hasta m horas
