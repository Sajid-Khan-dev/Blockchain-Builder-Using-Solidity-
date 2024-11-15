// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Average{ 

    int avg;

    function set(int a, int b, int c) public {
        avg = (a+b+c)/3;
    }

    function getAverage() public view returns (int){
        return avg;

    }

}