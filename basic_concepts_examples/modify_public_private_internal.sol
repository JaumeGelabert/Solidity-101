// SPDX-License-Identifier: UNLICENSED;
pragma solidity >= 0.8.0 <0.9.0;
pragma experimental ABIEncoderV2;

contract modifyers{
    address public owner;

    // Public var
    string public string_publico = "Deberia verse desde fuera del contrato";

    // Private var
    string private string_privado = "No deberia verse desde fuera del contrato";

    // Internal var
    string internal string_internal = "Este string tiene modificador internal";

    // Public ownwer
    constructor(){
        owner = msg.sender;
    }



    // Private vars modify
    uint private private_integer = 40;
    bool private flag = true;

    function test(uint _k) public{
        private_integer = _k;
    }

    function test_bool(bool _k) public{
        flag = _k;
    }


    // Internal vars
    uint32 internal test_internal = 2;
    bytes32 internal hash = keccak256(abi.encodePacked(test_internal));

}