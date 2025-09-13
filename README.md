[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/h1uYYL3u)
# Práctica 1: Clases e introducción a OpenGL

El alumno deberá proponer una estructura de clases que modele los ejercicios de la práctica. Recuerden ser creativos y mantener las buenas prácticas. Para los archivos de lecutura y escritura es recomendable tener directorios `input` y `output`.

Todo el código debe ir **comentado**, considera el siguiente ejemplo de comentario para la clase `Player`.

```cpp
/**
 * @file Player.h
 * @brief Definición de la clase Player que representa un jugador en un videojuego.
 */

#ifndef PLAYER_H
#define PLAYER_H

#include <string>

/**
 * @class Player
 * @brief Clase que representa a un jugador con nombre, vida y puntuación.
 *
 * Esta clase maneja información básica de un jugador, como su nombre,
 * la cantidad de vida restante y la puntuación acumulada.
 */
class Player {
private:
    /**
     * @brief Nombre del jugador.
     */
    std::string name;

    /**
     * @brief Vida actual del jugador.
     */
    int health;

    /**
     * @brief Puntuación acumulada del jugador.
     */
    int score;

public:
    /**
     * @brief Constructor de la clase Player.
     * @param name Nombre del jugador.
     * @param health Cantidad inicial de vida.
     */
    Player(const std::string& name, int health);

    /**
     * @brief Obtiene la vida actual del jugador.
     * @return Entero con la vida.
     */
    int getHealth() const;

    /**
     * @brief Cambia la vida del jugador.
     * @param amount Nueva cantidad de vida.
     */
    void setHealth(int amount);

    /**
     * @brief Incrementa la puntuación del jugador.
     * @param points Puntos a añadir a la puntuación.
     */
    void addScore(int points);

    /**
     * @brief Verifica si el jugador está vivo.
     * @return `true` si la vida es mayor que 0, `false` en caso contrario.
     */
    bool isAlive() const;
};

#endif // PLAYER_H

```

## 1. [Ejercicio 1: Torneo de Monstruos](./ejercicio_1/) 
## 2. [Ejercicio 2: Modelado en clases del ejemplo OpenGL](./ejercicio_2/)


 
