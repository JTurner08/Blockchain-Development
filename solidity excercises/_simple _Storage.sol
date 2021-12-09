Pragma solidity >=0.4.16 <0.9.0;

// this is only a simple example of a smart contract
contract SimpleStorage {
    uint storedData;
   
    function set(uint x) public {
        storeData = x;
    }

    function get() public view returns (uint) {
        return storeData;
    }
}

// contract has limitations 
// anyone can set values 
// must be tested using remi