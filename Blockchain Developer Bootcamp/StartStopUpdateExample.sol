pragma solidity ^0.5.13;

contract StartStopUdateExample {

    address owner;

    constructor() public {
        owner = msg.sender;
    }
    function sendMoney() public payable {

    }

    function withdrawAllMoney(address payable _to) public {
        if(msg.sender == owner) {
        _to.transfer(address)
        }
    }


}