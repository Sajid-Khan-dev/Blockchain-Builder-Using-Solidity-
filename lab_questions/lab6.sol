// Problem Statement : Simple Voting System
// Objective: Develop a contract named SimpleVote that allows users to vote for a "Yes" or "No" decision on a single issue.
// Implement two counters, one for "Yes" votes and one for "No" votes.
// Create a function to cast a vote, updating the respective counter based on the user's choice.
// Ensure that each Ethereum address can vote only once.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleVote{

    uint yes;
    uint no;
    address Authority;

    constructor (){
       Authority = msg.sender;
    }

     modifier isAlreadyListed() {   
        require(list[msg.sender]==false,"Already voted");        
        _;
   
    }

    mapping (address=>bool) list;

    function Vote_Yes() public isAlreadyListed{
        list[msg.sender]=true;
        yes+=1;
    }

    function Vote_No()public isAlreadyListed{
        list[msg.sender]=true;
        no+=1;
    }

    function result()public view returns(uint Yes,uint No){
        require(msg.sender == Authority , "Result can only be accessed by Authority");
        return (yes,no);


    }

}










//Simple by making Yes and No public, not use Result function
//Multiple issues decision system
//We can make Yes and No counter only access by users, not authority