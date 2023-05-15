// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ArraySum {
    // Do not modify this
    uint256[] array;

    // Do not modify this
    function setArray(uint256[] memory _array) external {
        require(_array.length <= 10, 'too long');
        array = _array;
    }

    // optimize this function
    function getArraySum() external view returns (uint256 sum) {
        // cached the length otherwise it will be recalculate each loop
        uint256 length = array.length;
        for (uint256 i; i < length; ) {
            sum += array[i];
            // Since we are only incremented value cannot overflow (i start at 0 when uninitiliazed)
            unchecked {
              ++i;
            }
        }
    }
}
