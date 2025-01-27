// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.15;

contract Security101 {
    mapping(address => uint256) balances;

    function deposit() external payable {
      unchecked {
           balances[msg.sender] += msg.value; 
        }
    }

    function withdraw(uint256 amount) external {
      uint256 balance = balances[msg.sender];
        require(balance >= amount, 'insufficient funds');
        (bool ok, ) = msg.sender.call{value: amount}('');
        require(ok, 'transfer failed');
        unchecked {
            balances[msg.sender] -= amount;
        }
    }
}
