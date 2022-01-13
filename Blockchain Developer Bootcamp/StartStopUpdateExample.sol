pragma solidity ^0.5.13;

contract StartStopUdateExample {

    address owner;

    constructor() public {
        owner = msg.sender;
    }
    function sendMoney() public payable {

    }

    function setPaused(bool _paused) public {
        require(msg.)
    }

    function withdrawAllMoney(address payable _to) public {
        require (msg.sender == owner"You are not the owner"); 
        require(Paused== false,"Contract is paused");
        _to.transfer(address(this).balance)
        }
        function 
    }
