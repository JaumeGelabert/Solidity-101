// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract Banco {
    //Definimos un tipo de dato complejo
    struct cliente {
        string _nombre;
        address direccion;
        uint256 dinero;
    }

    //Declaramos mapping que relaciona mediante un string a cada cliente
    mapping(string => cliente) clientes;

    //Funciones que nos permita dar de alta un nuevo cliente
    function nuevoCliente(string memory _nombre) public {
        //Como cuando se da de alta todavía no tiene dinero en la cuenta, lo inicializamos como 0.
        clientes[_nombre] = cliente(_nombre, msg.sender, 0);
    }
}
