// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract GetterSetter{
     
    string  name;
    uint phone_number;

    function set(string memory _name, uint _phone_number) public {
        name = _name;
        phone_number=_phone_number;

    } 
    
    function get() public view  returns (string memory, uint){
        return(name, phone_number);
        
    }

}