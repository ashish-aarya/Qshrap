namespace FirstQsharp {

    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;
    

    operation HelloQ() : Unit {
       using (qbits = Qubit[1])
       {
        mutable countZero = 0;
        mutable countone=1;
        for (i in 1 .. 1000)
        {
           H(qbits[0]);
           let r=M(qbits[0]);
           if(r==Zero)
           {
             set countZero=countZero+1;  
           }
            if(r==One)
           {
               set countone=countone+1;
           }

          
           ResetAll(qbits);
       }
        Message ($"{countZero} is Zero count");
         Message ($"{countone} is one count");
    }
}
}

