module tb;
reg t_a;
reg t_b;
reg t_c;
wire t_x;
wire t_n;
wire t_z;
wire t_o;
circuit2 c2(.a(t_a),.b(t_b),.c(t_c),.z(t_z));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_c,t_z);
t_a=1'b0;
t_b=1'b0;
t_c=1'b0;
#10
t_a=1'b0;
t_b=1'b0;
t_c=1'b1;
#10
t_a=1'b0;
t_b=1'b1;
t_c=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
t_c=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
t_c=1'b0;
#10
t_a=1'b1;
t_b=1'b0;
t_c=1'b1;
#10
t_a=1'b1;
t_b=1'b1;
t_c=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
t_c=1'b1;

end
endmodule

