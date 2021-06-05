//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

///@author Ashish Maharjan
/** @title This smart contract is for capturing the Employee EmpDetails
 */
contract EmpDetails{
/* this is single line comment
 this is second line
 */
    string  EmpName;
    uint  Age;

    function getEmpDetails() public view returns(string memory, uint){
        return (EmpName,Age);
    }
/** @dev Saves Emp name and age
 *  @param _empName is name of employee
 *  @param _age is age of the employee
 */

    function setEmpDetails(string memory _empName, uint _age) public {
        EmpName = _empName;
        Age = _age;
    }
}
