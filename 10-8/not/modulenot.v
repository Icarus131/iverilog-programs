module tb;
reg t_a;
wire t_x;
not1 a1(.a(t_a));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_x);
t_a=1'b0;
#10
t_a=1'b1;
#10
t_a=1'b0;
end
endmodule

