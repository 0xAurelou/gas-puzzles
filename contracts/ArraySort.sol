// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.15;

contract ArraySort {
    function sortArray(uint256[] calldata data) external pure returns (uint256[] memory) {
        uint256 dataLen = data.length;

        // Create 'working' copy
        uint[] memory _data = data;

        for (uint256 i = 0; i < dataLen; ) {
            for (uint256 j = i+1; j < dataLen;) {
                uint a = _data[i];
                uint b = _data[j];
                if(a > b){
                  uint256 temp = a ;
                  _data[i] = b;
                  _data[j] = temp;
                }
                unchecked{
                  ++j;
                }
            }
            unchecked {
              ++i;
            }
        }
        return _data;
    }
}
