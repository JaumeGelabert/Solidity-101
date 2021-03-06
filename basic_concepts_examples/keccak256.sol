// Indicamos la versión
pragma solidity ^0.8.0;
pragma experimental ABIEncoderV2;

// ¿Que haría el contrato? --> ...
contract PrimerContrato {
    function CalcularHash(string memory _cadena) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena));
    }

    function CalcularHash1(
        string memory _cadena,
        uint256 _k,
        address _direccion
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_cadena, _k, _direccion));
    }

    function CalcularHash2(
        string memory _cadena,
        uint256 _k,
        address _direccion
    ) public pure returns (bytes32) {
        return
            keccak256(
                abi.encodePacked(_cadena, _k, _direccion, "hola", uint256(2))
            );
    }
}
