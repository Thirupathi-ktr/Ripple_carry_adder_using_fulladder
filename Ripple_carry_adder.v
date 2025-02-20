module full_adder(a,b,c,sum,carry);
  input a,b,c;
  output sum,carry;
  
  assign sum = a ^ b ^c;
  assign carry = (a & b) | (a & c) | (b & c);
endmodule 


module RCA_4Bit(a_in,b_in,c_in,s,cout);
  input [3:0]a_in,b_in;
  input c_in;
  output cout;
  output [3:0]s;
  
  wire w1,w2,w3;
  
  full_adder a(.a(a_in[0]),
               .b(b_in[0]),
               .c(c_in),
               .sum(s[0]),
               .carry(w1));
  
  full_adder b(.a(a_in[1]),
               .b(b_in[1]),
               .c(w1),
               .sum(s[1]),
               .carry(w2));
  
  full_adder c(.a(a_in[2]),
               .b(b_in[2]),
               .c(w2),
               .sum(s[2]),
               .carry(w3));
  
  full_adder d(.a(a_in[3]),
               .b(b_in[3]),
               .c(w3),
               .sum(s[3]),
               .carry(cout) );
endmodule
