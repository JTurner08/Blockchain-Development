pragma solidity ^0.8.2;

contract Token {
    mapping(address => uint) public balances;
    uint public totalSupply = 1000;
    string public name = "My Token";
    string public symbol = "TKN';
    uint public decimals = 18;
}