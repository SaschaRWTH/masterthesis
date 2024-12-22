include "stdgates.inc";
gate majority a, b, c {
    cx c, b;
    cx c, a;
    ccx a, b, c;
}
gate unmaj a, b, c {
    ccx a, b, c;
    cx c, a;
    cx a, b;
}
// Given qubits cin, cout 
// Registers a, b; n size of a and b
majority cin, b[0], a[0];
for uint i in [0: n - 2] { majority a[i], b[i + 1], a[i + 1]; }
cx a[3], cout;
for uint i in [n - 2: -1: 0] { unmaj a[i],b[i+1],a[i+1]; }
unmaj cin, b[0], a[0];