/* Modulo fullAdder. 
    El modulo fullAdder es un sumador completo hecho a base 
    de dos instancias de medios sumadores previamente hechos.
    Cuenta con las siguientes entradas, salidas y cables:

Entradas:
    inOp1, inOp2: Son entradas de 1 bit y reciben los valores que se sumaran
    inCi: Es una entrada de 1 bit y recive el acarreo de entrada (el cual es el segundo operando de la segunda instancia de halfAdder)

Salidas:
    outRes: Es una salida de 1 bit y da salida al resultado de la suma
    outCo: Es una salida de 1 bit y da salida al acarreo de salida 

wires: 
    c1: Este es un cable de 1 bit y se encarga de conectar la salida de la primer instancia 
        del medio sumador a una de las entradas de la segunda instancia de medio sumador.

    c2: Este es un cable de 1 bit y se encarga de conectar el acarreo de salida de la primera instancia
    con una compuerta OR

    c3: Este es un cable de 1 bit y se encarga de conectar el acarreo de salida de la segunda instancia
    con una compuerta OR 
*/

`timescale 1ns/1ns
module fullAdder(
    input faOp1,    // fullAdderOp1
    input faOp2,
    input faCi,     // fullAdderCarryIn
    output faRes,
    output faCo    // fullAdderCarryOut
);

wire c1;
wire c2;
wire c3;

halfAdder instancia1(
    .haOp1(faOp1),
    .haOp2(faOp2),
    .haRes(c1),
    .haCo(c2)
);

halfAdder instancia2(
    .haOp1(c1),
    .haOp2(faCi),
    .haRes(faRes),
    .haCo(c3)
);

    assign faCo = c2 | c3;

endmodule