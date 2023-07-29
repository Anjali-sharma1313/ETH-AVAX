# ETH_AVAX
# Functions and Errors 

This Solidity program is a simple "Error handling " program that demonstrates the basic syntax and functionality of error handing in the Solidity programming language. The purpose of this program to demonstrate how error handling is done using require, revert and assert keywords.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has a three functions first one demonstrates the use of require keyword, the second one demonstrates the use of the revert keyword and third one demonstrates the use of assert . This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use gitpod , an online Solidity IDE. To get started, go to https://jeffryanpol-soliditysta-sbt87u3aw59.ws-us98.gitpod.io/

Once you are on the  website, create a new file by clicking on the "file" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., FunctioError.sol). Copy and paste the following code into the file:

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

    contract Contract {
    address public caller;
    uint256 public value;

    constructor() {
        caller = msg.sender;
    }

    function setValue(uint256 newValue) public {
        // Use require to validate inputs or conditions
        require(msg.sender == caller, "Only the owner can set the value.");

        // Use revert to handle custom error messages
        if (newValue > 500) {
            revert("Value must be less than or equal to 500.");
        }

        // Use assert for internal errors that should never occur
        assert(newValue >= 10 && newValue <= 500);

        value = newValue;
    }
    }


To compile the code, press CRTL+ SHIFT+P  then select Solidity compile contract and the program is compile sucessfully will be shown in console 
## Authors

Anjali Sharma


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
