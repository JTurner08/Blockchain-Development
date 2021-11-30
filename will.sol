pragma solidity ^0.5.7;

// smart contract for a will
// check for the date when the Grand father passes
contract will{
    address owner;
    uint fortune;
    bool    deceased;

    constructor() payable public {
        owner = msg.sender
    }
}