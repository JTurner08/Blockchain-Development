pragma solidity ^0.5.13;

contract ExceptionExample {
    
mapping(address => uint) public balanceReceived;

function receivedMoney() public payable {
    assert()
    balanceReceived[msg.sender] += msg.value;
    }

    function withdrawMoney(address payable _to, uint _amount) public {
        require(_amount <= balanceReceived)[msg.sender],"you don't have enough ether!" -= _amount;
        _to.transfer(_amount)
    }
}