// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract requireModifier{

    address owner;

    constructor(){
        owner = msg.sender;
    }

    modifier necessary{
        require(owner == msg.sender, "Real ID se aao");
        _;
    }
     modifier notNecessary{
        require(owner != msg.sender, "Fake ID se aao");
        _;
    }


    function fun1() public view notNecessary returns(string memory){
        return "Function 1";
    }
     function fun2() public view notNecessary returns(string memory){
        return "Function 2";
    }
     function fun3() public view necessary returns(string memory){
        return "Function 3";
    }
     function fun4() public view necessary returns(string memory){
        return "Function 4";
    }


}