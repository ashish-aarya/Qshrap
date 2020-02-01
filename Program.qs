namespace FirstQsharp {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    operation HelloQ() : Unit {
       using (qbits = Qubit[2])
       {
           for(i in 1 .. 10)
           {
             H(qbits[0]);
             X (qbits[1]);
             H (qbits[1]);
             BalancedSame(qbits);
             H(qbits[0]);
             let m=M (qbits[0]);
             if(m==One)
             {
                 Message("This is Balanced");
             }
             if (m==Zero)
             {
                 Message("This is Constant");
             }
         ResetAll(qbits);
           }
       }
    }
    operation BalancedSame (qbits: Qubit[] ):Unit
{
  
    CNOT(qbits[0],qbits[1]);
}
operation BalancedOppsite (qbits: Qubit[] ):Unit
{
  X(qbits[1]);
    CNOT(qbits[0],qbits[1]);
}
operation ConstantZero (qbits : Qubit[]):Unit
{
}

operation ConstantOne (qbits : Qubit[] ):Unit
{
    X(qbits[1]);
}

}



