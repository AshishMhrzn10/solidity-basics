//SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract Global{
    //blockhash
    function getBlockHash(uint _blockNumber) public view returns(bytes32){
        return blockhash(_blockNumber);
    }
    
    //block.coinbase
    function getMinAddr() public view returns (address payable){
        return block.coinbase;
    }
    
    //block.difficulty
    function getBlockGasLimit() public view returns(uint){
        return block.gaslimit;
    }
    
    //block._blockNumber
    function getBlockNum() public view returns(uint){
        return block.number;
    }
    
    //block.timestamp
    function getBlockTime()public view returns(uint){
        return block.timestamp;
    }
    
    //gasleft
    function gasLeft()public view returns(uint){
        return gasleft();
    }
    
    //msg.data 
    function getMsgData(bytes memory _var1) public pure returns(bytes memory){
        _var1 = 'a';
        return msg.data;
    }
    
    //msg.sender 
    function getMsgSender() public view returns(address){
        return msg.sender;
    }
    
    //msg.sig 
    function getMsgSig() public pure returns(bytes4){
        return msg.sig;
    }
    
    //msg.value
    function setMsgValue() public payable returns(uint){
        return msg.value;
    }
    
    // tx.gasprice
    function getGasPrice() public view returns(uint){
        return tx.gasprice;
    }
    
    // tx.origin
    function getOriginAddr() public view returns(address){
        return tx.origin;
    }

     //this
    function getThis()public view returns (uint){
        return address(this).balance;
    }
    
    //selfdestruct 
    function selfDestruct(address payable _address)public{
        selfdestruct(_address);
    }
    
}