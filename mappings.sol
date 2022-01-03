// SPDX-License-Identifier: UNLICENSED;
pragma solidity ^0.8.0;

contract mappings {
    //Mapping an address to a uint
    mapping(address => uint256) public chooseNumber;

    //Save Value into Key
    function chooseNumber_function(uint256 _number) public {
        chooseNumber[msg.sender] = _number;
    }

    //Show Value saved into Key
    function consultNumber_function() public view returns (uint256) {
        return chooseNumber[msg.sender];
    }

    //New mapping
    mapping(string => uint256) public money;

    //Save Value to Key
    function saveValue_function(string memory _name, uint256 _amount) public {
        money[_name] = _amount;
    }

    //Show Value saved into Key
    function checkAmount_function(string memory _name)
        public
        view
        returns (uint256)
    {
        return money[_name];
    }

    // TIPO DE MAPPING COMPLEJO
    // EJEMPLO IMPORTANTE DE ENTENDER

    struct Persona {
        string nombre;
        uint256 edad;
    }

    // Mapping related with uint and strcture Persona
    mapping(uint256 => Persona) public personas;

    //Save Value to Key
    function savePersonData(
        uint256 _idNumber,
        string memory _personName,
        uint256 _edad
    ) public {
        //Asociamos el nombre y la edad de la estructura Persona con un 'idNumber'
        personas[_idNumber] = Persona(_personName, _edad);
    }

    //Show Value in Key
    function showPersonData(uint256 _idNumber)
        public
        view
        returns (Persona memory)
    {
        return personas[_idNumber];
    }
}
