pragma solidity ^0.6.0;

contract simpleMappingExample {
    bool myVari =
    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public{
    myMapping[_Index] = true;
    }
}