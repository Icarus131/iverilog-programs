module circuit1(a,b,c,n); 
    input a,b,c;
    output n;
    wire x;
and1 andmod(c,b,x);
or1 ormod(x,a,n);
endmodule
