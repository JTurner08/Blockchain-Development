pragma solidity ^0.5.7;

// smart contract for a will
// check for the date when the Grand father passes
contract will{
    address owner;
    uint fortune;
    bool    deceased;

    constructor() payable public {
        owner = msg.sender;
        fortune = msg.value;
        deceased = false; 
    }
    // create modifier so the only per son who can call the contract is the owner.
    modifier onlyOwner {
        require(msg.sender == owner);
    }
    // Create modifier so that we only allocate funds if friend's gramps is deceased
}