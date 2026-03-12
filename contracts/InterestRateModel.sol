// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract InterestRateModel {

    function getInterestRate(uint256 utilization) public pure returns(uint256) {

        if(utilization < 50) {
            return 3;
        }

        if(utilization < 80) {
            return 7;
        }

        return 12;
    }

}
