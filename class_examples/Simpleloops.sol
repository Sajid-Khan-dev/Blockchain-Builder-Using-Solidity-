// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract looping{

    function loops () public pure returns(uint){

       uint a;
          for(uint i=0; i<=10; i++){

            a=a+i;
            
          }
       return a ;
         
     }
}
