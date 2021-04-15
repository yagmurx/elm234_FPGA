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

Boolean: A' + B' + ABC
*/

module light_switch_logic (
    input logic a, b, c, 
    output logic y
);

    assign y = ~a | ~b | a & b & c; 

endmodule 