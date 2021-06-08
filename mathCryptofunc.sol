//SPDX-License-Identifier:MIT 
pragma solidity ^0.8.0;

contract MathFunc{
    //addmod = (x+y)%k
    function getAddMod(uint x, uint y, uint k)public pure returns(uint){
        return addmod(x,y,k);
    }

    //mulmod = (x*y)%k
    function getMulMod(uint x, uint y, uint k)public pure returns(uint){
        return mulmod(x,y,k); 
    }   
    
    //16 keccak256
    function getKeccak256(bytes memory _input)public pure returns(bytes32 _output){
        return keccak256(_input);
    }
}
