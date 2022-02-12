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

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function sendMoney() public payable {
        balanceReceived [msg.sender].totalBalance += msg.value;
    }

    Payment memory payment = Payment(msg.value, now);

    balanceReceived [msg.sender].payment[balanceReceived[msg.sender].numPayments] = payment;
    balanceReceived [msg.sender].numPayments++;


function withdrawMoney(address payable _to, uint _amount) public {
    require(balanceReceived)[msg.sender].totalBalance >- _amount, "not enough funds");
    balanceReceived[msg.sender].totalBalance -= _amount;
    _to.transfer(_amount);
    
}

    function withdrawAllMoney(address payable _to) public {
        uint balanceToSend = balanceReceived[msg.sender].totalBalance;
        balanceReceived[msg.sender].totalBalance = 0;
        _to.transfer(balanceToSend);
    }
}                   

