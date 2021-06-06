//SPDX-License-Identifier:MIT
pragma solidity ^0.5.0;

contract SpecialArrays{
    bytes public var1 = new bytes(0);
    
    string public var2 = "Hello World";
    bytes public var3 = bytes (var2);
    
    function setBytes(byte _var1) public{
        var1.push(_var1);
    }
    
    function getLength() public view returns(uint){
        return var1.length;
    }
    
    function popBytes() public{
        var1.pop();
    }
    
    function getString(string memory _var2) public returns(string memory){
        var2 = _var2;
        return var2;
    }
}