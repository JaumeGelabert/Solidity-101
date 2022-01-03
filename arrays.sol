// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract TestingArrays {
    //Fix length
    uint256[3] public FixArray3 = [1, 2, 3];

    //Dinamic array
    uint256[] public ArrayDinamic = [1, 2, 3, 4, 5, 6];

    //Modify array
    function modifyArray_2(uint256 _k) public {
        ArrayDinamic.push(_k);
    }

    //Just declaring an array
    uint256[5] public DeclaredArray;

    //Fix length [5], only initilizating 3/5
    uint256[5] public NotFull = [1, 2, 3];

    //Coplex Dinamic Array
    struct Persona {
        string nombre;
        uint256 edad;
    }

    //Dinamic 'Persona' Array
    Persona[] public ComplexArrayPersona;

    function modifyArray_1(string memory _nombre, uint256 _edad) public {
        ComplexArrayPersona.push(Persona(_nombre, _edad));
    }
}
