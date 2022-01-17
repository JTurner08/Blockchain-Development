pragma solidity ^0.6.0;

contract simpleMappingExample {
    bool
    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public{
    myMapping[_Index] = true;
    }
}