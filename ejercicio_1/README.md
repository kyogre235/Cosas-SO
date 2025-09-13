## Ejercicio 1: Torneo de Monstruos

## Objetivo
Desarrollar un programa en C++ que simule **batallas y torneos de monstruos**, aplicando conceptos de:

- Clases y herencia
- Archivos de entrada y salida
- Aleatoriedad proporcional a atributos
- Organización de torneos escalables

---

## 1. Modelado de monstruos

- Cada monstruo tiene:
  - `nombre`
  - `fuerza`
  - `agilidad`
  - `inteligencia`
- Se debe crear una **clase base** y **seis clases derivadas** que representen distintas especies. Cada especie de monstruo tiene un caracter asociado  definido por el alumno. 

    `Ejemplo`: `O` (Orco), `D` (Dragón), `T` (Troll), `V` (Vampiro), `E` (Esqueleto), `H` (Hechicero).

---

## 2. Batallas entre monstruos

- Especificaciones:
    - Cada batalla enfrenta a **dos monstruos** en **tres encuentros**.  
    - El ganador de la mayoría de encuentros gana la batalla.  
    - Los encuentros son **aleatorios pero proporcionales** a los atributos relevantes:

    | Tipo de batalla      | Atributos considerados | Carácter |
    |---------------------|---------------------|----------|
    | Física              | fuerza + agilidad   | f        |
    | Ingenio             | agilidad + inteligencia | i    |
    | Espiritual          | fuerza + inteligencia | e       |

    `Ejemplo:`*Godzilla tiene fuerza 80 y agilidad 40, King Kong tiene fuerza 30 y agilidad 50. Se enfrentan en una batalla física, por lo que Godizlla cuenta con 120 puntos para los encuentros mientras King Kong cuenta con 80 puntos. De tal manera que en cada encuentro Godizlla tiene 60% de ganar mientras King Kong tiene 40% de ganar.*

- **Formato requerido para:** `batallas.txt`
    ``` 
    tipo1 nombre1 fuerza1 agilidad1 inteligencia1 tipo2 nombre2 fuerza2 agilidad2 inteligencia2 tipoBatalla
    ``` 
    `Ejemplo`
    ```
    O Grommash 80 60 30 D Alduin 50 40 90 f
    T Ugh 70 40 50 H Eldrin 40 55 95 i
    E Skully 60 45 20 V Nosferatu 65 50 70 e
    ```
- **Salida de resultados:** `resultados.txt`

    `Ejemplo de resultados.txt:`
    ```
    --- Batalla Física ---
    Grommash (Orco) vs Alduin (Dragón)
    Encuentro 1: Grommash gana
    Encuentro 2: Alduin gana
    Encuentro 3: Grommash gana
    Ganador de la batalla: Grommash
    ```
## 3. Torneo completo

Los participante del torneo se almacenan en el archivo `torneo.txt`, el cual es una lista de monstruos con **número par de participantes** (mínimo 16). Utilizando las batallas ya implementadas, se realiza un torneo entre los distintos participantes. 

- **Formato requerido para:** `torneo.txt`
    ```
    tipo nombre fuerza agilidad inteligencia 
    ```
    `Ejemplo:`
    ```
    O Grommash 80 60 30
    D Alduin 50 40 90
    T Ugh 70 40 50
    H Eldrin 40 55 95
    E Skully 60 45 20
    V Nosferatu 65 50 70
    ```

- **Rondas del torneo**:
  - Octavos de final (16 ➡️ 8)  
  - Cuartos de final (8 ➡️ 4)  
  - Semifinales (4 ➡️ 2)  
  - Final (2 ➡️ 1)

- Especificaciones:
    - Los perdedores se eliminan de los participantes (eliminatoria). 
    - El tipo de batalla y los participantes son **aleatorios** en cada ronda.
    - **RECORDATORIO:** Cada batalla del torneo genera resultados los cuales se almacenan en `resultados.txt`.

- Archivo de salida: `resultados_torneo.txt`

    ```
    --- Octavos de final ---
    O Grommash vs D Alduin → Gana Grommash
    T Ugh vs H Eldrin → Gana Eldrin
    ...

    --- Cuartos de final ---
    Grommash vs Eldrin → Gana Eldrin
    ...

    --- Semifinales ---
    ...

    --- Final ---
    Eldrin vs Nosferatu → Campeón: Eldrin 
    ```

    ## Recursos de interés 

    - [random](https://cplusplus.com/reference/random/?kw=random+)
    - [std::vector](https://cplusplus.com/reference/vector/vector/)
