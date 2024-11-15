// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SubscriptionService {
    address public owner;
    uint256 public subscriptionFee;
    uint256 public subscriptionDuration; // In seconds

    mapping(address => uint256) public subscriptionExpiry;

    event Subscribed(address indexed user, uint256 expiryTimestamp);
    event Unsubscribed(address indexed user);

    constructor(uint256 _fee, uint256 _duration) {
        owner = msg.sender;
        subscriptionFee = _fee;
        subscriptionDuration = _duration;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only owner can call this function");
        _;
    }

    function subscribe() external payable {
        require(msg.value == subscriptionFee, "Incorrect subscription fee");
        subscriptionExpiry[msg.sender] = block.timestamp + subscriptionDuration;
        emit Subscribed(msg.sender, subscriptionExpiry[msg.sender]);
    }

    function unsubscribe() external {
        require(subscriptionExpiry[msg.sender] > 0, "Not subscribed");
        delete subscriptionExpiry[msg.sender];
        payable(msg.sender).transfer(subscriptionFee); // Refund
        emit Unsubscribed(msg.sender);
    }

    function isSubscriptionActive(address user) external view returns (bool) {
        return subscriptionExpiry[user] > block.timestamp;
    }
}
