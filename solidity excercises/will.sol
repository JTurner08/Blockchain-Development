pragma solidity ^0.8.10;

// smart contract for a will
// check for the date when the Grand father passes
contract will{
    address owner;
    uint fortune;
    bool deceased;

    constructor() payable public {
        owner = msg.sender;
        fortune = msg.value;
        deceased = false; 
    }
    // create modifier so the only per son who can call the contract is the owner.
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    // Create modifier so that we only allocate funds if friend's gramps is deceased

        modifier mustBeDeceased {
        require(deceased == true);
        _;
    }
    
    // list family wallets.
    address payable[] familyWallets;

    //map through inheritance 
    mapping(address => uint) inheritance;

    // set inheritance for each address

    function setInheritance(address payable wallet, uint amount) public {
        // to add wallets to the family wallers (hint: use .push from javascript)
        familyWallets.push(wallet);
        inheritance[wallet] = amount;
    }

    // Pay each family member based on their waller address.

    function payout () private mustBeDeceased {
        // with a for loop you can loop through things and set conditions
        for(uint i=0; i<familyWallets.length; i++) {
            familyWallets[i].transfer(inheritance[familyWallets[i]]);
            // transfering the funds from contract address to receiver address
        }

    }
    // oracle switch simulation.
    function hasDeceased() public onlyOwner {
        deceased = true;
        payout();
    }
}