pragma solidity 0.8.10;

// the contract should allow only the creator to create new coins
// Anyone can send coins to each other without a need for registering with a username and password,all you need is an Ethereum keypair 

contract Coin {
    // the keyword public it's making the variables here accessible from other contracts
    address public minter;
    mapping (address => uint) public balances;

    // Events allow clients to react to specific contract changes you desire
    /* Event is an inheritable member of a contract. An event is emitted, it stores the arguments passed in transction logs
       These logs are stored on a blochain and are accesible using address of the contract till the contract is present on the blockchain
    */
   event Sent(address from, address to, uint amount);


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

    // send any amount of coins 
    // to an existing address
error insufficientBalance(uint requested, uint available);

    function send(address receiver, uint amount) public {
        if(amount > balances[msg.sender])
        revert insufficientBalance({
            requested: amount,
            available: balances[msg.sender]
        });
        balances[msg.sender] -= amount;
        balances[receiver] +=amount;
        emit Sent(msg.sender, receiver, amount);
    }
}

// remem