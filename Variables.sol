// This is where our code goes

pragma solidity >=0.7.0 <0.9.0;

//  create a contrat that can store data and return the data back

//  be able to do the following:

// 1. receive information, 2. store information and 3 return the information back 

//  A contract in the sense of solidity is a collection of code (its function) and data (its state) that resides at a specific address on the Ethereum blockchain.

contract simpleStorage {
    // write all the code inside here - function and its state
    
    uint storeData = 23;
    string name = 'tom';
    bool switchON = true;
    
}