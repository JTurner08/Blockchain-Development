pragma solidity ^0.6.0;

contract simpleMappingExample {

    bool myVar1 = false;
    bool myVar2 = false;
    bool myvar3 = false;

    mapping(uint => bool) public myMapping;

    function setValue(uint _index) public{
    myMapping[_Index] = true;
    }

    function setMyAddressToTrue() public {
        myAddressMapping[msg.sender] = true
    }
    
    }
}