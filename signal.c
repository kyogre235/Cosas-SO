#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <signal.h>

// Manejador de la señal SIGUSR1
void signal_handler(int signo) {
    if (signo == SIGUSR1) {
        printf("Señal %d recibida!\n", signo);
    }
}

int main() {
    // Obtener el PID del proceso actual
    pid_t pid = getpid();
    printf("PID del proceso: %d\n", pid);
    
    // Registrar el manejador de la señal SIGUSR1
    if (signal(SIGUSR1, signal_handler) == SIG_ERR) {
        perror("Error al registrar el manejador de señal");
        exit(EXIT_FAILURE);
    }
    
    // Enviar la señal SIGUSR1 a sí mismo
    printf("Enviando señal SIGUSR1 a sí mismo...\n");
    kill(pid, SIGUSR1);
    
    // Pausar el proceso para esperar la señal de otra terminal antes de salir
    //while (1) {
    //    pause();
    //}
    
    return 0;
}
