// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract check {
    modifier isEven(uint256 number) {           
        require(number % 2 == 0, "Number is not Even");
        _;
    }

    function ok(uint256 num) public pure isEven(num) returns (string memory) {
        return "Provided number is Even";
    }
}
