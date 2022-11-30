//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../Foo.sol";

contract FooFuzzing is Foo {

    constructor() {}

    function echidna_deposit() public view returns (bool) {
        return balance[msg.sender] <= MAX;
    }
}