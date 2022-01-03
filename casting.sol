// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract casteo {
    uint8 public entero8bits = 42;
    uint64 public entero64bits = 70000;
    uint256 public entero256bits = 9000000;
    int16 public enteroSigno16bits = 1;

    // Casteo
    uint64 public casteo1 = uint64(entero8bits);
    uint72 public casteo2 = uint72(entero64bits);
    uint64 public casteo3 = uint64(casteo2);
    uint16 public casteo4 = uint16(enteroSigno16bits);

    // Function
    function eight2sixtyfour(uint8 _k) public pure returns (uint64) {
        return uint64(_k);
    }
}
