module tb;
reg t_a;
reg t_b;
wire t_x;
wire t_y;
wire t_z;
wire t_sum;
reg t_cin;
wire t_cout;
fa_module1 a1(.a(t_a),.b(t_b),.cin(t_cin),.sum(t_sum),.cout(t_cout));
initial begin $dumpfile("dump.vcd");
$dumpvars(0,tb);
end
initial begin $monitor(t_a,t_b,t_cin,t_sum,t_cout);
t_a=1'b0;
t_b=1'b0;
t_cin=1'b0;
#10
t_a=1'b0;
t_b=1'b0;
t_cin=1'b1;
#10
t_a=1'b0;
t_b=1'b1;
t_cin=1'b0;
#10
t_a=1'b0;
t_b=1'b1;
t_cin=1'b1;
#10
t_a=1'b1;
t_b=1'b0;
t_cin=1'b0;
#10
t_a=1'b1;
t_b=1'b0;
t_cin=1'b1;
#10
t_a=1'b1;
t_b=1'b1;
t_cin=1'b0;
#10
t_a=1'b1;
t_b=1'b1;
t_cin=1'b1;
#10
t_a=1'b0;
t_b=1'b0;
t_cin=1'b0;

end
endmodule
