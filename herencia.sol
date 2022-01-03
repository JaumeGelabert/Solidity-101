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

//En este contrato Cliente, al ser el Contrato Hijo, podremos utilizar las variables y funciones declaradas como publicas en el Contrato Padre
contract Cliente is Banco {
    function AltaCliente(string memory _nombre) public {
        nuevoCliente(_nombre);
    }

    function IngresarDinero(string memory _nombre, uint256 _cantidad) public {
        clientes[_nombre].dinero = clientes[_nombre].dinero + _cantidad;
    }

    function RetirarDinero(string memory _nombre, uint256 _cantidad)
        public
        returns (bool)
    {
        bool flag = true;

        if (int256(clientes[_nombre].dinero) - int256(_cantidad) >= 0) {
            clientes[_nombre].dinero = clientes[_nombre].dinero - _cantidad;
        } else {
            flag = false;
        }

        return flag;
    }

    function ConsultarDinero(string memory _nombre)
        public
        view
        returns (uint256)
    {
        return clientes[_nombre].dinero;
    }
}
