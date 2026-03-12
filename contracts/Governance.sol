// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Governance {

    struct Proposal {
        string description;
        uint256 votes;
    }

    Proposal[] public proposals;

    mapping(address => bool) public voted;

    function createProposal(string memory description) public {
        proposals.push(Proposal(description,0));
    }

    function vote(uint256 proposalId) public {

        require(!voted[msg.sender], "Already voted");

        proposals[proposalId].votes += 1;

        voted[msg.sender] = true;
    }

}
