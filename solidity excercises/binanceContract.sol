pragma solidity ^0.8.2;

contract Token {
    mapping(address => uint) public balances;
    mapping(address => mapping(address =>uint)) public allowance;
    0*89428924248
    
    uint public totalSupply = 1000;
    string public name = "My Token";
    string public symbol = "TKN';
    uint public decimals = 18;

    event Transfer(address indexed from, address indeced to, uint value);

    constructor() {
        balances[msg.sender] = totalSupply; 
    }

    function balanceOf(address owner) public view returns(uint) {
        return balances [owner];
    }

    function transfer(address to, uint value) public returns(bool)
        require(balanceOf(msg.sender) >=value, 'balance too low');
        balances[to] += value;
        balances[msg.sender] -= value;
        return true;
}


function transferFrom(address from, address to, uint value) public returns(bool) {
    require(balanceOf(from) >= value, 'balance too low');
    require(allowance[from][msg.sender] >= value, 'allowance too low');
    balances[to] += value;
    balances[from] -= value;
    emit Transer(from, to, value);
    return true;
}

function approve(address spender, uint value) public returns(bool) {
    allowance[msg.sender][spender] = value;
}












// https://www.youtube.com/watch?v=Q_wK6N9GtS8 tutorial 