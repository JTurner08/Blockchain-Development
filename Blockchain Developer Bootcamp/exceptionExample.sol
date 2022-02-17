pragma solidity ^0.5.13;

contract ExceptionExample {
    
mapping(address => uint) public balanceReceived;

function receivedMoney() public payable {
    assert(balanceReceived[msg.sender] + unit64(msg.value))
    }
}