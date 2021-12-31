// Indicamos la versión
pragma solidity ^0.8.0;

// ¿Que haría el contrato? --> ...
contract PrimerContrato {
    //Funcion msg.sender
    function MsgSender() public view returns (address) {
        return msg.sender;
    }

    function BlockCoinbase() public view returns (address) {
        return block.coinbase;
    }

    function BlockDifficulty() public view returns (uint256) {
        return block.difficulty;
    }

    function BlockTimestamp() public view returns (uint256) {
        return block.timestamp;
    }

    function BlockNumber() public view returns (uint256) {
        return block.number;
    }

    function MsgSig() public pure returns (bytes4) {
        return msg.sig;
    }

    function TxGasPrice() public view returns (uint256) {
        return tx.gasprice;
    }
}
