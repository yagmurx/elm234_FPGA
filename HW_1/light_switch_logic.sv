/* light_switch_logic.sv

There are 3 switches in a room and every switch can open and close lights.
Truth Table
A  B  C  |  Y
0  0  0  |  0
0  0  1  |  1
0  1  0  |  1
0  1  1  |  0
1  0  0  |  1
1  0  1  |  0
1  1  0  |  0
1  1  1  |  1

Boolean: A'D + AC' + C'D
*/

module ligh_switch_logic (
    input logic a, c, d, 
    output logic y
);

    assign y = ~a & d | a & ~c | ~c & d ; 

endmodule 