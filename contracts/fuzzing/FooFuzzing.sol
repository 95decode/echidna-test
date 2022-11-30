//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "../Foo.sol";

contract FooFuzzing {
    Foo internal foo;
    uint256 private constant MAX = 10000000000000000000000000000;

    constructor() {
        foo = new Foo();
    }

    function deposit(uint256 amount) public {
        foo.deposit(amount);
    }

    /**
     * @return false when `balance(address(this)) < MAX` (for testing echidna)
     */
    function hexlant_deposit() public view returns (bool) {
        return foo.balance(address(this)) < MAX;
    }
}