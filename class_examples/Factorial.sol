// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

   contract fact {

      function factorial (uint x ) public pure returns(uint)
     {
        uint facto = 1 ;
        for (uint i = 1; i<=x; i++ ) 
        {
            facto=facto*i;
        }
        return facto;
     }

    //  function method2 (uint fac) public pure returns (uint)
    //  {
    //     for(uint i=fac-1; i<=1; i--)
    //     {
    //         fac=fac*i;
    //     }
    //     return fac;
    //  }

  }
