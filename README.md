# Linear-Programming-R

Este código en R utiliza la biblioteca `lpSolve` para resolver un problema de programación lineal. El objetivo es maximizar una función sujeta a diversas restricciones.

Primero, se carga la biblioteca `lpSolve`, que proporciona herramientas para la programación lineal. Luego, se definen los coeficientes de la función objetivo que se desea maximizar. En este caso, la función objetivo es una combinación lineal de dos variables, \(2x_1 + 1x_2\).

A continuación, se crea una matriz que contiene los coeficientes de las restricciones, donde cada fila representa una restricción y cada columna corresponde a las variables \(x_1\) y \(x_2\). Las restricciones son: \(x_1 + x_2 \leq 10\), \(x_1 - x_2 \leq 0\) y \(x_2 \leq 4\). Se especifican también las desigualdades para estas restricciones, todas del tipo menor o igual. Además, se indican los valores en el lado derecho de las restricciones, que representan los límites máximos permitidos.

Con estos datos, se resuelve el problema de programación lineal utilizando la función `lp()`, especificando que se quiere maximizar la función objetivo. Los resultados incluyen la solución óptima y el valor máximo de la función objetivo, que se imprimen en la consola.

Para visualizar el resultado, se generan gráficos que muestran la región factible del problema. Se trazan las líneas correspondientes a las restricciones y se etiqueta la región factible. También se agrega una flecha que indica la dirección del gradiente de la función objetivo, y se trazan líneas que representan diferentes niveles de la función objetivo. La solución óptima se destaca con un punto rojo en el gráfico.
