//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract fixedArrays{
    bytes1 public var1 = 'a';
    bytes2 public var2 = 'ab';
    bytes3 public var3 = 'abc';
    bytes4 public var4 = 0x12345678;
    
    uint[2] public num1 = [1,2];
    int8[3] public num2;
    
    function getBytes(uint i)public view returns(bytes1){
        return var3[i];
    }
    
    function getBytesLength() public view returns(uint){
        return var3.length;
    }
    
    function setInt(uint i, int8 _num2) public {
        num2[i] = _num2;
    }
    
    function getIntLength() public view returns(uint){
        return num2.length;
    }
}