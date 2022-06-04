// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0;

contract Storage {

    struct request{
        string description;
        uint value;
        address recipiant;
        bool complete;
    }

    address public manager;
    uint public MinimumContribution;
    address[] public approvals;

    function Campaign(uint minimum) public {
        manager = msg.sender;
        MinimumContribution = minimum;
    }

    function contribute() public payable{
        require(msg.value > MinimumContribution);
        approvals.push(msg.sender);
    }
}
