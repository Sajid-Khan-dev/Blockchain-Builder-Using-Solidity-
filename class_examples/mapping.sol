// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract MappingDemo{

    address public owner;

    constructor(){                         // Constructor used 
        owner = msg.sender;
    }

    mapping (uint=> string) public empID;  // Mapping syntax 

    function setValue() public {
        require (owner == msg.sender, " Real ID se aao ");      // Exception handling
        empID[12] = "Sajid";
        empID[14] = "Keshav";
        empID[53] = "Khan";
        empID[60] = "Raj";
    }


//0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c

//0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c

}
