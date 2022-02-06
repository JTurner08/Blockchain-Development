pragma solidity ^0.5.13;

contract MappingStructExample {

    struct Payment {
        uint amount;
        uint timestamp;
    }

    struct Balance {
        uint totalBalance;
        uint numPayment;
        mapping(uint => Payment) payment;
    }
    
mapping(address => uint) public balanceReceived;

    function getbalance() public view returns(uint) {
        return address(this).balance;
    }


    function sendMoney() public payable {
        balanceReceived [msg.sender].totalBalance += msg.value;
    }

    Payment memory payment = Payment()


function withdrawMoney(address payable _to, uint _amount) public {
    require(balanceReceived)[msg.sender] -= _amount, "not enough funds");
    balanceReceived[msg.sender] -= _amount;
    _to.transfer(_amount);
    
}

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender];
        balanceReceived[msg.sender] = 0;
        _to.transfer(balanceToSend);
    }
}                   

