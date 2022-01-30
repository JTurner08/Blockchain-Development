pragma solidity ^0.5.13;

contract MappingStructExample {
    mapping(address => uint) public balanceReceived;

    function getbalance() public view returns(uint) {
        return address(this).balance;
    }


    function sendMoney() public payable {
        balanceReceived [msg.sender] += msg.value;
    }


function withdrawMoney(address payable _to)

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSend);
    }
}