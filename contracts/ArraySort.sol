// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ArraySort {
    function sortArray(uint256[] calldata data) external pure returns (uint256[] memory) {
        uint256 dataLen = data.length;

        // Create 'working' copy
        // Done - Copy the array and not creating a new one 
        uint[] memory _data = data;

        // Check _data.length by dataLen since the copy at the same length as the original
        // remove i++ not optimised enough
        for (uint256 i = 0; i < dataLen; ) {
            // remove j++ not optimised enough
            for (uint256 j = i+1; j < dataLen;) {
                // use cached _data[i] and _data[j] value
                uint a = _data[i];
                uint b = _data[j];
                if(a > b){
                  uint256 temp = a ;
                  // we need to reassigned since a and b are copy value
                  _data[i] = b;
                  _data[j] = temp;
                }
                // Incrementation cannot overflow so we can unchecked 
                unchecked{
                  ++j;
                }
            }

            // Incrementation cannot overflow so we can unchecked 
            unchecked {
              ++i;
            }
        }
        return _data;
    }
}
