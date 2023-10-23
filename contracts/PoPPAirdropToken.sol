// SPDX-License-Identifier: MIT
pragma solidity 0.8.10;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract PoPPAirdropToken is ERC20{

    address public owner;

    constructor() ERC20("PoPP Airdrop Token","POPPAT"){
        owner = msg.sender;
    }

    function mintTo(address _to, uint256 _amount) public{
        require(msg.sender == owner, 'Not owner.');
        _mint(_to, _amount);
    }

    function setOwner(address _newOwner) public{
        require(msg.sender == owner, 'Not owner.');
        owner = _newOwner;
    }
}
