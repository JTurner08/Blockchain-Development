pragma solidity ^0.5.13;

contract MappingStructExample {
    mapping(address => uint) public balanceReceived;

    function getbalance() public view returns(uint) {
        return address(this).balance;
    }


    function sendMoney() public payable {
        balanceReceived []
    }
}