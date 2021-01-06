# Full-Adder
Sumador completo en lenguaje Verilog.

# Sumadores. 

Un sumador es un circuito lógico combinacional que calcula la operación de suma. 

Los sumadores trabajan con señales eléctricas que representan números binarios. 


## Medio Sumador (Half Adder).

Un medio sumador es un circuito capaz de sumar dos datos de un bit y producir un bit de acarreo de salida. La función booleana que permite realizar la suma de los dos bits es la XOR, siendo la función AND la realiza el acarreo. 

###### La ecuación lógica y la tabla de verdad del medio sumador son las siguientes: 

𝑆=𝐴⨁𝐵, 𝐶=𝐴∙B

***S*** representa el resultado de la suma, mientras que ***C*** el acarreo de salida. 

|  A   |  B   |  C   |  S   |
| :--: | :--: | :--: | :--: |
|  0   |  0   |  0   |  0   |
|  0   |  1   |  0   |  1   |
|  1   |  0   |  0   |  1   |
|  1   |  1   |  1   |  0   |

###### El diagrama del medio sumador queda de la siguiente manera: 
![diagrama medio sumador](https://raw.githubusercontent.com/Ismael-Avila1/Full-Adder/main/halfAdder-Diagram.png)


## Sumador Completo (Full Adder).

El medio sumador no puede conectarse con otros medios sumadores para formar un sumador más grande, por ello es necesario diseñar un sumador que admita otra entrada además de los datos a sumar, es decir, un sumador de 3 datos de 1 bit. A esto se le denomina **sumador completo**, y su ecuación lógica y tabla de verdad están a continuación:

𝑆=𝐴⨁𝐵⨁𝐶0, 𝐶1=𝐴⋅𝐵+(𝐴⨁𝐵)⋅𝐶0

| A    | B    | C0   | C1   | S    |
| ---- | ---- | ---- | ---- | ---- |
| 0    | 0    | 0    | 0    | 0    |
| 0    | 0    | 1    | 0    | 1    |
| 0    | 1    | 0    | 0    | 1    |
| 0    | 1    | 1    | 1    | 0    |
| 1    | 0    | 0    | 0    | 1    |
| 1    | 0    | 1    | 1    | 0    |
| 1    | 1    | 0    | 1    | 0    |
| 1    | 1    | 1    | 1    | 1    |

Este sumador completo está hecho a partir de dos instancia de medios sumadores, y para una mejor perspectiva se puede ver el siguiente diagrama:

![diagrama medio sumador](https://raw.githubusercontent.com/Ismael-Avila1/Full-Adder/main/fullAdder-Diagram.png)


Este sumador completo sí es capaz de conectarse con otros full adders para formar sumadores más grandes (de 4, 8 o 16 bits, por ejemplo). 

