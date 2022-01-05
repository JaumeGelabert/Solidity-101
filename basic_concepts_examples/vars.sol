// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract tipos_de_variables {
    // Variables enteras sin signo
    uint256 primer_entero;
    uint256 segundo_entero = 5;
    uint256 cota = 5000;

    // Variables enteras sin signo especificando bits
    uint8 entero_8bits;
    uint64 entero_64bits = 7000;

    // Variables enteras con signo
    int256 variable_con_signo;

    // Variables de tipo string
    string variable_de_texto;
    string texto = "Hola, mi nombre es Falsitus";
    string vacio = "";

    // Variables bool
    bool si = true;
    bool no = false;

    // Variables de tipo byte
    bytes32 primer_ejemplo;
    bytes4 segundo_ejemplo;
    string nombre = "Jaume";
    bytes32 hash = keccak256(abi.encodePacked(nombre));
    bytes4 identificador;

    function ejemploBytes4() public {
        identificador = msg.sig;
    }

    // Variables address
    address direccion;
    address public direccion_local_1 =
        0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public direccion_local_2 =
        0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2;
}
