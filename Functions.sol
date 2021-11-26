// This is where our code goes

pragma solidity >=0.7.0 <0.9.0;

//  create a contrat that can store data and return the data back

//  be able to do the following:

// 1. receive information, 2. store information and 3 return the information back 

//  A contract in the sense of solidity is a collection of code (its function) and data (its state) that resides at a specific address on the Ethereum blockchain.

contract simpleStorage {
    // write all the code inside here - function and its state
    
    uint storeData;

    // A Function is a group of resuable code that can be used anywhere in your application. They preform a specific task.define a function in Solidity is by using the function keyword, followed by a unique function name, a list of parameters (that might be empty), and last a statement surrounded by curly braclets

    // set and get

    // public enables visibility so that we can call this outside of the contract itself

    function set(uint x) public {
        storeData = x;
    }

    function get() public view returns (uint){
        return storeData;
    }
    
}