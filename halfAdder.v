/* Half Adder.
    El modulo halfAdder es un medio sumador de descripcion de compuertas logicas de 2 bits.
    Cuenta con las siguientes entradas y salidas:

Entradas:
    Dos entradas de 1 bit cada una. Los valores recibidos en estas entradas son los datos que se sumaran.

Salidas: 
    Dos salidas de 1 bit cada una.
    Una de ellas es para dar salida al resultado de la suma.
    La otra salida es para el acarreo de saliada (Carry Out) en caso de ser necesario. 
*/

`timescale 1ns/1ns

module halfAdder(
    input op1,
    input op2,
    output res,
    output co   // CarryOut
);

assign res = op1 ^ op2;
assign co = op1 & op2;

endmodule
