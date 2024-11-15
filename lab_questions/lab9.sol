// Problem Statement : Classroom Grades Registry
// Use a struct named Grade that includes properties for the student's ID and their grade.
// Implement a mapping from student ID to their Grade.
// Write a function for adding or updating a student's grade.
// Develop a function to retrieve a student's grade by their ID.


// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract GradesRegistry {
    struct Grade {
        uint256 studentID;
        uint256 grade;
    }

    mapping(uint256 => Grade) grades;

    function updateGrade(uint256 studentID, uint256 newGrade) external {
        grades[studentID] = Grade(studentID, newGrade);
    }

    function getGrade(uint256 studentID) external view returns (uint256) {
        return grades[studentID].grade;
    }
}
