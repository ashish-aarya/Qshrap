namespace FirstQsharp {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    operation HelloQ() : Unit {
       using (qbits = Qudotbit[1])
       {
           H(qbits[0]);
           let r=M(qbits[0]);
           Message ($"{r} OUTPUT");
           ResetAll(qbits);
       }
    }
}

