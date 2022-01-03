// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

//Hay dos manera de importar
//Opcion 1 - Todo el documento
import "./import_father.sol";
//Opcion  2 - Contrato especifico del documento
import {Banco} from "./import_father.sol";

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
