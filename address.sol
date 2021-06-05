// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract addressDataType{
    address public contract_owner;
    address payable public recipient_address;
    
    uint public transfer_amount;
    uint public recipient_balance;
    
    constructor() public{
        contract_owner = msg.sender;
    }
    
    function transferEth(address payable _recipient_address) public payable returns(uint){
        recipient_address = _recipient_address;
        transfer_amount = msg.value;
        recipient_address.transfer(transfer_amount);
        recipient_balance = recipient_address.balance;
        return recipient_balance;
    }
}