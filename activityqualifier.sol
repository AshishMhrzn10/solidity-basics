//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract ActQualifier{
    int var1 = 5;
    int var2 = 10;
    
    function f1() public view returns(int _total){
        _total = var1 + var2;
        return _total;
    }
    
    function f2() public pure returns(int _total){
        // _total = var1 + var2; This is pure error
        _total = 5+9;
        return _total;
    }
    
    fallback() external payable{
        
    }
}