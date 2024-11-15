// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract bank{
    mapping (address=> uint256) public balances;

    address public owner;

    constructor(){
        owner=msg.sender;
    }

    function deposit () public payable {
        require (msg.value>0, "Deposite amount should be greater then zero");
        balances[msg.sender]+=msg.value;
    }

    function withdraw (uint256 amount) public {
        require (amount >0, "Withdrawal amount should be greater then zero");
        require (balances[msg.sender]>=amount, "Insufficient balance");
        balances[msg.sender]-=amount;
        payable(msg.sender).transfer(amount);
    } 
    function get_balance() public view returns(uint)
    {
        return(balances[msg.sender]);
    }
}