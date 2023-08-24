module tb;
reg t_a;
reg t_b;
reg t_c;
wire t_x;
wire t_n;
circuit1 c1(.a(t_a),.b(t_b),.c(t_c),.n(t_n));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_c,t_n);
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

