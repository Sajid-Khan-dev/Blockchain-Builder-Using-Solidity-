// Problem Statement 1: Basic Contact List
// Objective: Create a contract named ContactList that allows users to store and retrieve phone numbers associated with names.
// •	Use a struct named Contact to hold a person's name and phone number.
// •	Implement a mapping to associate Ethereum addresses with their Contact.
// •	Write a function to allow users to add or update their contact information.
// •	Include a function to retrieve a user's contact information by their Ethereum address.



// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract ContactList{

    struct Contact{
        string name;
        uint phone_number;
        bool isRegistered;
    }

    mapping (address=>Contact) phone_book;

    function add(string memory _name,uint _phone_number) public {
        phone_book[msg.sender] = Contact(_name, _phone_number, true); 

    }

    function getContact_Info (address _user_address) public view returns(string memory, uint){
        Contact memory user = phone_book[_user_address];
        return(user.name,user.phone_number); 

    }

    function update(uint new_phone_number) public returns (string memory) {
        require(phone_book[msg.sender].isRegistered == true, "Not registered user");
         phone_book[msg.sender].phone_number=new_phone_number;
         return ("Updated");

    }
    
}