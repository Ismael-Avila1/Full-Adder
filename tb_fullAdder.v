/*
Modulo tb_fullAdder. Este modulo es el testbench del fullAdder.

Este modulo cuenta con los registros y cables.

reg:
    faOp1: Pasa el dato a la entrada faOp1
    faOp2: Pasa el dato a la entrada faOp2
    faCi: Pasa el dato a la entrada faCi

wire:
    faRes: Pasa el dato a la salida faRes
    faCo: Pasa el dato a la salida faCo
*/

`timescale 1ns/1ns

module tb_fullAdder();

reg tb_faOp1;
reg tb_faOp2;
reg tb_faCi;

wire tb_faRes;
wire tb_faCo;

fullAdder duvFa(    // Design Under Verification FullAdder
    .faOp1(tb_faOp1),
    .faOp2(tb_faOp2),
    .faCi(tb_faCi),
    .faRes(tb_faRes),
    .faCo(tb_faCo)
);

endmodule
