namespace FirstQsharp {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    operation HelloQ() : Unit {
       using (qbits = Qubit[2])
       {
        for (i in 1 .. 10)
        {
           H(qbits[0]);
           CNOT (qbits[0],qbits[1]);
           let r=M(qbits[0]);
           let m= M(qbits[1]);
          if (r==One)
          {
           if(m==Zero)
           {
            Message ("This is importatnt event");
           }
            if(m==One)
           {
               Message ("We got l1 here");
           }
          }
          if (r==Zero)
          {
           if(m==One)
           {
            Message ("This is impossible event");
           }
            if(m==Zero)
           {
               Message ("We got 00 here");
           }
          }
        
           ResetAll(qbits);
       }
       }
}
}

