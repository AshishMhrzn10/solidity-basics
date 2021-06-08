//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract ABI{
    //abi.encode
    function getAbiEncode() public pure returns (bytes memory){
        return abi.encode("abc","def");
    }
    
    function getAbiEncodePacked() public pure returns (bytes memory){
        return abi.encodePacked("abc","def");
    }
    
    function getkeccak256AEP() public pure returns (uint){
        return uint(keccak256(abi.encodePacked("abc","def")));
    }
}