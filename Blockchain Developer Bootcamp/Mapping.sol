pragma solidity ^0.6.0;

contract simpleMappingExample {
    bool myVar1 = false;
    bool myVar =
    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public{
    myMapping[_Index] = true;
    }
}