// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract str {
    string greeting = "Hello";

    function stringConcatenate() public view returns (string memory) {
        string memory s2 = " World";
        string memory s3 = string.concat(greeting, s2);
        return (s3);
    }
}
