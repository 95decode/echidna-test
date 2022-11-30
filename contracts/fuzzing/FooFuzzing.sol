//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../Foo.sol";

contract FooFuzzing is Foo {

    constructor() {}

    function echidna_deposit() public view returns (bool) {
        return balance[msg.sender] < MAX;
    }
}

/*
contract FooFuzzing {
    Foo internal foo;
    //address internal bar;

    constructor() {
        foo = new Foo();
    }

    function deposit(uint256 _amount) external {
        foo.deposit(_amount);
    }

    function echidna_deposit() public view returns (bool) {
        return foo.balance(msg.sender) < 100;
    }
}
*/