//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract DynamicArrays{
    bytes[] public var1;
    int[] public num1;
    
    function setBytes(bytes memory _var1) public{
        var1.push(_var1);
    }
    
    function getBytesLength() public view returns(uint){
        return var1.length;
    }
    
    function popBytes() public {
        var1.pop();
    }
    
    function setInt(int _num1)public{
        num1.push(_num1);
    }
    
    function getIntLength() public view returns(uint){
        return num1.length;
    }
    
    function popInt() public{
        num1.pop();
    }
}