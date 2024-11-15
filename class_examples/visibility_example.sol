// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A {
    uint256 public x = 10;
    uint256 private z = 30;
    uint256 internal y = 20;

    // no state variable can be external

    function fun1() private pure returns (string memory) {
        return "Private function";
    }

    function fun2() internal pure returns (string memory) {
        return "internal function";
    }

    function fun3() public pure returns (string memory) {
        return "Public function";
    }

    function fun4() external pure returns (string memory) {
        return "External function";
    }

    // for accesing fun1() and fun2() we have to make another function in same contract of public or external visibility.

    function fun5() public pure returns (string memory) {
        return fun1();
    }

    function fun6() public pure returns (string memory) {
        return fun2();
    }
}

contract B is A {
    string public t = fun2();
}

contract C {
    A obj = new A();
    string public t = obj.fun4();
}
