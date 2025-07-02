# Métodos Numéricos: Ejercicios de Aproximación Polinomial

Implementación en GNU Octave de métodos de interpolación y ajuste de curvas para aproximación polinomial.

## 📂 Archivos

| Problema | Descripción |
|----------|-------------|
| **`1_interpolacion_lineal.m`**  | Realiza interpolación lineal para estimar `log(10)` usando: <br><br><ul><li>a) `log(8)` y `log(12)`</li><li>b) `log(9)` y `log(11)`</li></ul><br>Calcula el error relativo porcentual para cada caso. |
| **`2_interpolacion_lagrange.m`**  | Calcula `log(10)` mediante interpolación de Lagrange de 3er orden usando:<br><br><ul><li>`log(8)`, `log(9)`, `log(11)`, `log(12)`</li></ul><br> Incluye cálculo de error relativo.|
| **`3_minimos_cuadrados.m`**  | Ajusta una recta por mínimos cuadrados a un conjunto de 10 puntos y calcula el factor de correlación. |


## ⚙️ Requisitos

- [GNU Octave](https://www.gnu.org/software/octave/) (recomendado: versión 7.3 o superior)

- **Alternativa sin instalación**:  
  Puedes ejecutar este proyecto directamente en línea mediante [Octave Online](https://octave-online.net).  
  Solo necesitas:
1. Crear una cuenta gratuita.
2. Subir los tres archivos `.m` del repositorio (`1_interpolacion_lineal.m`, `2_interpolacion_lagrange.m`, `3_minimos_cuadrados.m`).
3. Ejecutar cada uno por separado desde la consola del sitio.

## 🚀 Instrucciones de uso

1. Abre Octave.
2. Coloca los tres archivos `.m` en el mismo directorio.
3. Ejecuta cada archivo por separado:
   - `1_interpolacion_lineal.m`
   - `2_interpolacion_lagrange.m`
   - `3_minimos_cuadrados.m`

## 📈 Resultados

#### `1_interpolacion_lineal.m`
- Gráfica con puntos de datos y estimaciones.
- Salida en consola.

![image](https://github.com/user-attachments/assets/4c517647-7bd5-4bbc-910f-d8de2876383a)

---
#### `2_interpolacion_lagrange.m`
- Gráfica con curva de interpolación.
- Salida en consola.

![image](https://github.com/user-attachments/assets/4a6afa6b-9345-449d-b083-cd59a6a5d311)

---

#### `3_minimos_cuadrados.m`
- Gráfica de dispersión con recta de ajuste.
- Salida en consola.

![image](https://github.com/user-attachments/assets/9c9f1690-c0ca-4c7e-9be0-b634e2bb5a88)

---

## 🧾 Créditos
- **Materia:** Métodos Numéricos
- **Asesor:** Claudio Hiram Carmona Jurado
- **Alumno:** Jonathan Eduardo Olivas Meixueiro
- **Matricula:** 240694
- **Fecha de entrega:** 13/Julio/2025

---
