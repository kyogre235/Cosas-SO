import os
import signal
import time

# Manejador de la señal
def signal_handler(signum, frame):
    print(f"Señal {signum} recibida!")

# Obtener el PID del proceso actual
pid = os.getpid()
print(f"PID del proceso: {pid}")

# Registrar el manejador de la señal SIGUSR1
signal.signal(signal.SIGUSR1, signal_handler)

# Enviar la señal SIGUSR1 a sí mismo
print("Enviando señal SIGUSR1 a sí mismo...")
os.kill(pid, signal.SIGUSR1)

# Esperar indefinidamente
#while True:
#    signal.pause()
