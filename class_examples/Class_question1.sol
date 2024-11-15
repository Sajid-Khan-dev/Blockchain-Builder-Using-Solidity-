// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract A{
    string name;
    uint256 age;
    bool isActive;

    function update(string memory _name, uint256 _age, bool _isActive ) public {
        name = _name;
        age = _age;
        isActive = _isActive;
    } 
    function retrive() public view returns (string memory , uint256 , bool ) {
            
            return (name,age,isActive);
             
    }
}