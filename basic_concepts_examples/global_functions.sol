// Solidity's compiler version
pragma solidity ^0.8.0;

// Com: What the contract will do
contract PrimerContrato {
    //Function msg.sender
    function MsgSender() public view returns (address) {
        return msg.sender;
    }

    // Function
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
