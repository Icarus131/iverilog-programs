module tb;
reg t_a;
reg t_b;
wire t_x;
nor1 a1(.a(t_a),.b(t_b));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_x);
t_a=1'b0;
t_b=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
#10
t_a=1'b0;
t_b=1'b0;
end
endmodule

