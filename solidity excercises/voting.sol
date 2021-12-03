pragma solidity >=0.7.0 <0.9.0

contract Ballot{
    
    // VARIABLES
    strut vote {
        address voterAddress;
        bool choice;
    }

    struct voter {
        string voterName;
        bool voted;
    }

uint private countResult = 0;
uint public finalResult = 0;
uint public totalVoter = 0;
uint public totalVote = 0;

// MODIFIERS

// EVENTS

// FUNCTIONS


}