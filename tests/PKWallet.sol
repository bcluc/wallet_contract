// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract PKWallet {
    // Function to receive ETH when msg.data is empty
    receive() external payable {}

    // Fallback function is called when msg.data not empty
    fallback() external payable {}

    event transfer(
        uint256 indexed date,
        address indexed from,
        address indexed to,
        uint256 amount
    );

    function sendViaTransfer(address payable _to) public payable {
        if (_to.send(msg.value)) {
            emit transfer(block.timestamp, msg.sender, _to, msg.value);
        }
    }

    function getChainID() external view returns (uint256) {
        uint256 id;
        assembly {
            id := chainid()
        }
        return id;
    }
}
