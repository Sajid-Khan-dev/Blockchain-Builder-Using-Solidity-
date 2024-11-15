// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Structure{
    
    struct Employee{
        string name;
        uint age;
        address addr;
    }

    Employee public emp;
    Employee[] public empdata;

    function setValue() public{

        Employee memory emp1 = Employee("Sajid",19,0x5B38Da6a701c568545dCfcB03FcB875f56beddC4);
         Employee memory emp2 = Employee({name : "Khan", age : 19, addr : 0x5c6B0f7Bf3E7ce046039Bd8FABdfD3f9F5021678});
         Employee memory emp3;
         emp3.name = "Keshav";
         emp3.age = 19;
         emp3.addr=0x1aE0EA34a72D944a8C7603FfB3eC30a6669E454C;

         emp = emp1;
         emp=emp2;

         Employee memory emp4 = Employee ("Raj", 21, 0xCA35b7d915458EF540aDe6068dFe2F44E8fa733c);


         empdata.push(emp1);
         empdata.push(emp2);
         empdata.push(emp3);
         empdata.push(emp4);


    }
}