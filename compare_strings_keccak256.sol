// SPDX-License-Identifier: UNLICENSED;
pragma solidity >=0.8.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract compare_strings {
    function same_string(string memory _j, string memory _i)
        public
        pure
        returns (bool)
    {
        bytes32 hash_j = keccak256(abi.encodePacked(_j));
        bytes32 hash_i = keccak256(abi.encodePacked(_i));

        if (hash_j == hash_i) {
            return true;
        } else {
            return false;
        }
    }
}
