//SPDX-License-Identifier: MIT
pragma solidity 0.8.16;

contract Foo {
    // MAX = 1e18
    uint256 private constant MAX = 10000000000000000000000000000;
    mapping(address => uint256) public status;
    mapping(address => uint256) public st;
    address private deployer;

    constructor() {
        deployer = msg.sender;
    }

    function add(uint256 amount) external {
        require(status[msg.sender] + amount <= MAX);

        status[msg.sender] += amount;
    }

    function sub(uint256 amount) external {
        status[msg.sender] -= amount;
    }

    function check(address account) external view returns (uint256) {
        return status[account];
    }

    function deposit() public payable {
        
    }

    function withdraw(uint256 amount) public {
        //require(msg.sender == deployer, "deployer");
        require(address(this).balance >= amount);

        payable(msg.sender).transfer(amount);
    }

}