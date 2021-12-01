pragma solidity 0.8.10;

// the contract should allow only the creator to create new coins
// Anyone can send coins to each other without a need for registering with a username and password,all you need is an Ethereum keypair 

contract Coin {
    // the keyword public it's making the variables here accessible from other contracts
    address public minter;
    mapping (address => uint) public balances;



    // constructor is only runs when we deploy contract 
    constructor() {
        minter = msg.sender;
    }

    // make new coins and send them to an address
    // only the owner can send these coins
    function mint(address receiver, uint amount) public {
        require(msg.sender == minter);
        balances[receiver] += amount;
    }
}