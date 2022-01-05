// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract Eventos {
    //Declarar evento
    event NombreEvento_1(string _nombrePersona);

    //Emit del evento
    function EmitirEvento_1(string memory _nombrePersona) public {
        emit NombreEvento_1(_nombrePersona);
    }
}
