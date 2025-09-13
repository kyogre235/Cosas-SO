## Ejercicio 2: Modelado en Clases del Ejemplo OpenGL

El alumno deberá **proponer una estructura de clases** que separe responsabilidades, basándose en el [Ejemplo de OpenGL](https://github.com/xcontla/Visualizacion20261/blob/main/codigo3/openglEjemplo/main.cpp). La organización del proyecto debe contemplar que los **archivos de los shaders** se encuentren en un directorio `shader`, desde donde serán leídos por la aplicación.  

**Responsabilidades sugeridas para las clases:**  
- Compilar, enlazar y utilizar shaders.  
- Almacenar datos de vértices, configurar VAO y VBO, y dibujar geometría.  
- Controlar el pipeline de render: limpiar buffers y dibujar todos los modelos.  
- Inicializar OpenGL y GLFW, crear y mantener la ventana.  
- Administrar la ejecución completa de la aplicación y el ciclo principal de render.  

Finalmente, la aplicación deberá **mostrar al menos cuatro figuras geométricas distintas** en pantalla, aprovechando la estructura de clases definida.  


**Consideraciones importantes sobre el [CMakeLists.txt](CMakeLists.txt)**

El archivo [CMakeLists.txt](CMakeLists.txt) está en el supuesto de que la computadora tiene instaladas las bibliotecas de `glfw` y `glew`, de tal manera que en el comando `target_link_libraries` las busca en automático. En caso de error, se recomienda que las bibliotecas se instalen como `shared libraries`.  