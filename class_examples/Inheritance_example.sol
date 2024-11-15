// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Base {
    function name1() public pure returns (string memory) {
        return "In Base contract";
    }

    function name2() public pure returns (string memory) {
        return "In Base contract";
    }

    function name3() public pure virtual returns (string memory) {
        return "In Base contract";
    }

    function name4() public pure virtual returns (string memory) {
        return "In Base contract";
    }
}

contract child_1 is Base {
    function name3() public pure override returns (string memory) {
        return "In Child 1 contract using override";
    }

    function name4() public pure virtual override returns (string memory) {
        return "In Child 1 contract using override";
    }
}

contract child_2 is child_1 {
    function name4() public pure override returns (string memory) {
        return "In Child 2 contract using override";
    }
}
