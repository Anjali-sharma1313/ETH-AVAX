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

