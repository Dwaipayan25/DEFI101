//ERC20 TOKEN
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract TokenOpenZeppelin1 is ERC20 {
    constructor() ERC20('Token Name','Token_Ticker'){}
}

contract TokenOpenZeppelin2 is ERC20 {
    constructor() ERC20('Token Name','Token_Ticker'){
        _mint(msg.sender, 100000);
    }
}

contract TokenOpenZeppeli3 is ERC20 {
    address public admin;
    constructor() ERC20('Token Name','Token_Ticker'){
        _mint(msg.sender, 100000);
    }
    function mint(address to,uint amount)external {
        require(msg.sender==admin, "only admin");
        _mint(to,amount);
    }
}

contract TokenOpenZeppeli4 is ERC20 {
    address public admin;
    constructor() ERC20('Token Name','Token_Ticker'){}
    function faucet(address to,uint amount)external {
        _mint(to,amount);
    }
}