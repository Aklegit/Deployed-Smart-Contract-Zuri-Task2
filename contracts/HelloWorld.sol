// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

contract HelloWorld {
    string public message;
    string public tag = "welcome";

    constructor (string memory onboardingMessage) {
        message = onboardingMessage;
    }
    function setMessage (string memory helloWorld) public {
        message = helloWorld;
    }
    function viewMessage() public view returns (string memory) {
        return string(abi.encodePacked(tag, message));
    }
}