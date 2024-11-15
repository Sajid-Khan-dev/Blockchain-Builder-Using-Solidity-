// Problem Statement : Personal Address Book
// Objective: Develop a contract named AddressBook that allows users to store and retrieve names associated with Ethereum addresses.
// Implement a mapping to associate Ethereum addresses with names (as strings).
// Create a function to add or update the name associated with the sender's address.
// Include a function to retrieve the name associated with any given Ethereum address.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AddressBook{
    struct Detail{
        string Name;
        bool isRegistered;
    }

    mapping (address=> Detail) Addresses;

    function Add_or_update(string memory name) public {
       Detail memory instance = Detail(name,true);
       Addresses[msg.sender]=instance; 
    } 

    function retrieve() public view returns(string memory){
        require(Addresses[msg.sender].isRegistered==true,"You are not registered");   //to check if the user is already registered or not
             return(Addresses[msg.sender].Name); 
    }
}