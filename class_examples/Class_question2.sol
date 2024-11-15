// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract add {
    function addNumbers(uint256 numA, uint256 numB)  public pure returns (uint256)
    {
        uint256 sum;
        sum = numA + numB;
        return sum;
    }
}
