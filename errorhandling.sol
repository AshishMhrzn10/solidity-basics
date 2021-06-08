//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract ErrorHandling{
    address public owner;
    uint public balance;
    
    constructor(){
        owner = msg.sender;
    }
    
    function selfDestructContract(address payable _address) public{
        require(msg.sender == owner, "Only contract owner can destroy");
        assert (address(this).balance != 0);
        selfdestruct(_address);
    }
    
    function RecieveEther() public payable returns(uint){
        balance = address(this).balance;
        revert("Halt this execution");
        return balance;
    }
}