module fa_module1(a,b,cin,sum,cout);
    input a,b,cin;
    output sum,cout;
    wire x,y,z;

and1 andmod1(a,b,x);
xor1 xormod1(a,b,y);
xor1 xormod2(y,cin,sum);
and1 andmod2(y,cin,z);
or1 ormod1(z,x,cout);
endmodule
