// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract ageCalculator{
 uint age ;
    function birthYear(uint a) public
    {
        age = 2024-a; 
    }

    function getAge() public view returns (uint) 
    {
        return age;
         
    }
}