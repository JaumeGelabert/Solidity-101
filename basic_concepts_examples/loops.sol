// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract bucle_if {
    //If
    function MismoNumero2(uint256 _numero) public pure returns (bool) {
        bool respuesta;

        if (_numero == 2) {
            respuesta = true;
        } else {
            respuesta = false;
        }

        return respuesta;
    }
}

contract bucle_for {
    //Suma de los _numero_de_sumas a partir del numero introducido
    function suma(uint256 _numero_inicio, uint256 _numero_de_sumas)
        public
        pure
        returns (uint256)
    {
        uint256 resultado = 0;
        for (
            uint256 i = _numero_inicio;
            i < (_numero_inicio + _numero_de_sumas);
            i++
        ) {
            resultado = resultado + i;
        }

        return resultado;
    }

    //

    address[] direcciones;

    function addAddress() public {
        direcciones.push(msg.sender);
    }

    function comprobarAddress() public view returns (bool, address) {
        bool coincidencia;
        for (uint256 i = 0; i < direcciones.length; i++) {
            if (msg.sender == direcciones[i]) {
                coincidencia = true;
                return (coincidencia, direcciones[i]);
            }
        }
    }

    function sumaFactorial() public pure returns (uint256) {
        uint256 suma = 0;

        for (uint256 i = 1; i <= 10; i++) {
            uint256 factorial = 1;

            for (uint256 j = 2; j <= i; j++) {
                factorial = factorial * j;
            }

            suma = suma + factorial;
        }
        return suma;
    }
}

contract bucle_while {
    //Sumar los número impares desde 0 hasta 100
    function sumaImparesInferiores100() public pure returns (uint256) {
        uint256 counter = 0;
        uint256 result = 0;

        while (counter <= 100) {
            if (counter % 2 != 0) {
                result = result + counter;
            }
            counter++;
        }
        return result;
    }

    //Esperar 5 segundos

    uint256 tiempo;

    function fijarTiempo() public {
        tiempo = block.timestamp;
    }

    function Esperar() public view returns (bool) {
        while (block.timestamp < (5 seconds + tiempo)) {
            return false;
        }
        return true;
    }
}
