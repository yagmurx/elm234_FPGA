/* tb_light_switch_logic.sv

Testbench file for light_switch_logic.sv
*/

module tb_light_switch_logic ();

    logic a, b, c;
    logic y;

    light_switch_logic dut0(a,b,c,y);

    initial begin
        
              
      a = 0; b = 0; c = 0;    #10;
      c = 1;                  #10;
      b = 1; c = 0;           #10;
      c = 1;                  #10;
      a = 1; b = 0; c = 0;    #10;
      c = 1;                  #10;
      b = 1; c = 0;           #10;
      c = 1;                  #10;        
        

        $stop;
    end

endmodule