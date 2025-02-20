module tb();
  reg [3:0]a_in,b_in;
  reg c_in;
  wire cout;
  wire [3:0]s;
  
  RCA_4Bit DUT(a_in,b_in,c_in,s,cout);
  
  initial
    begin
      a_in = 4'b0000; b_in = 4'b0101 ; c_in =1'b0;
      #20;
      a_in = 4'b0100; b_in = 4'b0101 ; c_in =1'b0;
      #20;
      a_in = 4'b0101; b_in = 4'b0101 ; c_in =1'b0;
      #20;
      a_in = 4'b1100; b_in = 4'b0101 ; c_in =1'b0;
      #20;
      a_in = 4'b0111; b_in = 4'b0111 ; c_in =1'b0;
      #20;
      a_in = 4'b0100; b_in = 4'b1101 ; c_in =1'b0;
      #20;
      a_in = 4'b1111; b_in = 4'b1101 ; c_in =1'b0;
      #20;
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
      $monitor("input a_in = %b,b_in = %b,c_in = %b,cout = %b,s = %b",a_in,b_in,c_in,cout,s);
    end
endmodule
