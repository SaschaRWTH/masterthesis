OPENQASM 3.0;    /* Indicate language in circuit header. */

gate x a { U(pi,0,pi) a; }              /* Define x  gate. */
gate cx a, b { ctrl @ x a, b; }         /* Define cx gate. */
gate h a { U(pi/2, 0, pi) a; }          /* Define h  gate. */

qubit[2] reg;           /* Definition of quantum register. */
bit[2] res;             /* Definition of resical register. */

h reg[0];       /* Apply h gate to fist qubit in register. */
cx reg[0], reg[1];         /* Apply cx gate to the qubits. */

res[0] = measure reg[0]; /* Measure qubit and save to bit. */
res[1] = measure reg[1]; /* Measure qubit and save to bit. */