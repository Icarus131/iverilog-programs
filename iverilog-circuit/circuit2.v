module circuit2(a,b,c,z);
    input a,b,c;
    output z;
    wire x;
    wire o;
    wire n;

and1 andmod1(c,b,x);
or1 ormod1(x,a,n);
and1 andmod2(a,b,o);
or1 ormod2(n,o,z);
endmodule
