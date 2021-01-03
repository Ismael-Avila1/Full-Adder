/*
Modulo tb_halfAdder. Este modulo es el testbench del halfAdder.

Este modulo cuenta con los registros y cables.

reg:
    tb_op1: Pasa el dato a la entrada op1
    tb_op2: Pasa el dato a la entrada op2

wire:
    tb_res: Pasa el dato a la salida res
    tb_co: Pasa el dato a la salida co (CarryOut)
*/

`timescale 1ns/1ns

module tb_halfAdder();

reg tb_op1;
reg tb_op2;

wire tb_res;
wire tb_co;

halfAdder duv(  // Design Under Verification
    .op1(tb_op1),
    .op2(tb_op2),
    .res(tb_res),
    .co(tb_co)
);

endmodule
