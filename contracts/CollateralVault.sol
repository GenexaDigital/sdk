// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CollateralVault {

    mapping(address => uint256) public collateral;

    function depositCollateral() external payable {
        collateral[msg.sender] += msg.value;
    }

    function withdrawCollateral(uint256 amount) external {
        require(collateral[msg.sender] >= amount, "Not enough collateral");

        collateral[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
    }

}
