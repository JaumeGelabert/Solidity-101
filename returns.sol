// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract return_contract {
    //Devolver 'Hello!'. Podemos cambiarlo por una variable si quisieramos
    function SayHi() public pure returns (string memory) {
        return "Hello!";
    }

    //Funcion que multiplica _k por _j
    function Multiply(uint256 _k, uint256 _j) public pure returns (uint256) {
        return _k * _j;
    }

    //Pair or even
    function IsPair(uint256 _k) public pure returns (bool) {
        if (_k % 2 == 0) {
            return true;
        } else {
            return false;
        }
    }
}
