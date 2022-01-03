// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

contract funciones {
    //Añadir dentro de un array de direcciones, la direccion de la persona que llame a la funcion
    address[] public direcciones;

    function NuevaDireccion() public {
        direcciones.push(msg.sender);
    }

    //Computar el hash de los datos introducidos como parametros
    bytes32 public hashed;

    function HashParam(string memory _param2hash) public {
        hashed = keccak256(abi.encodePacked(_param2hash));
    }

    //Creamos un tipo de dato complejo
    struct comida {
        string nombre;
        string ingredientes;
    }

    comida public hamburguesa;

    function Hamburguesas(
        string memory _nombreHamburguesa,
        string memory _ingredientes
    ) public {
        hamburguesa = comida(_nombreHamburguesa, _ingredientes);
    }

    //IMPORTANTE EL EJEMPLO DE ABAJO//

    struct alumno {
        string nombre;
        address direccion;
    }

    bytes32 public hashAlumno;

    function getHashAlumno(string memory _nombre, address _direccion) private {
        hashed = keccak256(abi.encodePacked(_nombre, _direccion));
    }

    //Guardamos con la funcion publica dentro de una lista los alumnos
    alumno[] public lista;
    mapping(string => bytes32) alumnos_mapping;

    function nuevoAlumno(string memory _nombre) public {
        lista.push(alumno(_nombre, msg.sender));
        getHashAlumno(_nombre, msg.sender);
        alumnos_mapping[_nombre] = hashAlumno;
    }
}
