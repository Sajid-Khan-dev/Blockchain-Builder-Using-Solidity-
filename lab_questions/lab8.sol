// Problem Statement: Tip Jar
// Objective: Implement a TipJar contract that allows users to send tips in Ether to a content creator or service provider as a token of appreciation.
// Any Ethereum address should be able to send Ether as a tip to the contract.
// The contract owner (recipient of tips) should be able to withdraw the accumulated tips.
// Include functionality to track the total amount of tips sent to the tip jar.
// has context menu


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Tipjar{

   
      address payable Recipient;
      uint Total_Tip;

   constructor (){
      Recipient=payable(msg.sender);
   }

    modifier isRecipent() {   
      require (msg.sender == Recipient,"Only accessed by Recipient");
      _;
   
    }

   function Send_Tip() public payable {

      require (msg.sender != Recipient,"Tip can't be provided by Recipient");
      require(msg.value >= 1 ether, "Amount should be one or more than one ether");
      Total_Tip+=msg.value;
   }

   function Withdraw_Tip() public isRecipent{
      uint amount = Total_Tip;
      Total_Tip=0;                         //reset to zero to avoid re-enterrance attack
      Recipient.transfer(amount);
   }

   function check_Tip()public isRecipent view returns(uint){
      return(Total_Tip);
   }

}

