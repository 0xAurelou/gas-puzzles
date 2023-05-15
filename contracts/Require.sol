// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract Require {
    // Do not modify these variables
    uint256 constant COOLDOWN = 1 minutes;
    uint256 lastPurchaseTime;

    // Optimize this function
    function purchaseToken() external payable {
        require(
            msg.value == 0.1 ether
        );

      // unchecked will not 
      unchecked {
        // Cool down is already a constant
        require(block.timestamp > lastPurchaseTime + COOLDOWN);        
      }
      // Since block.timestamp is a constant no need to cache it
      lastPurchaseTime = block.timestamp;
        // mint the user a token
    }
}
