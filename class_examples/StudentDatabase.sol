// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract StudentDatabase{

    struct Student{
        string name;
        uint256 roll_no ;
        uint256 semester;
    }

    mapping (uint256 => Student) public students;
    Student anotherStudent = Student("Sajid", 69, 6);
    Student anotherStudent1 = Student("Zeeshan", 70, 6);
    Student anotherStudent2 = Student("Mithil", 68, 6);
    Student anotherStudent3 = Student("Abbas", 67, 6);
    Student anotherStudent4 = Student("Manav", 66, 6);
 

    constructor(){
        students [66]=anotherStudent4;
        students [67]=anotherStudent3;
        students [68]=anotherStudent2;
        students [69]=anotherStudent;
        students [70]=anotherStudent1;
    }

   function addStudent (string memory _name,uint256 _rollNo, uint256 _semester) public{
            
            Student memory newStudent = Student(_name, _rollNo, _semester);
            students [_rollNo] = newStudent;
    }

}
