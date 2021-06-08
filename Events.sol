//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Events{
    address public fromAccount;
    uint public toAcctBalance;
    
    event Transferred(address, address, uint);
    
    function transfer(address payable _toAcct)public payable{
        fromAccount = msg.sender;
        _toAcct.transfer(msg.value);
        toAcctBalance = _toAcct.balance;
        emit Transferred(fromAccount, _toAcct, msg.value);
    }
}