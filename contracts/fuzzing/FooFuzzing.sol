//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

import { Foo } from "../Foo.sol";

contract FooFuzzing {
    Foo internal foo;
    uint256 private constant MAX = 10000000000000000000000000000;

    constructor() {
        foo = new Foo();
    }

    function add(uint256 amount) public {
        foo.add(amount);
    }

    function sub(uint256 amount) public {
        foo.sub(amount);
    }

    /**
     * @return false when `status(address(this)) < MAX` (for testing echidna)
     */
    function hexlant_check() public view returns (bool) {
        return foo.check(address(this)) <= MAX;
    }
}