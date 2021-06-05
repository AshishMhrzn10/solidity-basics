// SPDX-License-Identifier:MIT

pragma solidity ^0.8.0;

contract enumExample{
    
    enum claimStatus{Approved, Rejected}
    
    claimStatus status;
    
    function setStatus(uint _claim_amount)public{
        if(_claim_amount>100){
            status = claimStatus.Rejected;
        }
        else if(_claim_amount<100){
            status = claimStatus.Approved;
        }
    }
    
    function getStatus() public view returns(claimStatus){
        return status;
    }
}