//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Foo {
    uint256 private constant MAX = 10000000000000000000000000000;
    mapping(address => uint256) public _balance;

    constructor() {}

    function deposit(uint256 amount) external {
        require(_balance[msg.sender] + amount <= MAX);

        _balance[msg.sender] += amount;
    }

    function balance(address account) public view returns (uint256) {
        return _balance[account];
    }
}