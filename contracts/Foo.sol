//SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract Foo{
    uint256 public constant MAX = 10000000000000000000000000000;
    mapping(address => uint256) public balance;

    constructor() {
        balance[msg.sender] = 0;
    }

    function deposit(uint256 _amount) external {
        if (balance[msg.sender] + _amount <= MAX) {
            balance[msg.sender] += _amount;
        }
    }
}