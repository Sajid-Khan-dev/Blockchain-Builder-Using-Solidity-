// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Prime {
    function PrimeCheck(uint256 num) public pure returns (bool) {
        uint256 count = 0;
        for (uint256 i = 1; i <= num; i++) {
            if (num % i == 0) {
                count++;
            }
        }
        if (count == 2) {
            return true;
        } else return false;
    }

    // function isPrimeChecker(uint256 n)public pure returns (bool){
    //     for(uint256 i=2; i<n; i++)
    //     {
    //         if(n%i==0)
    //         {
    //             return false;
    //         }
    //      return true;
    //     }
    // } 
}
