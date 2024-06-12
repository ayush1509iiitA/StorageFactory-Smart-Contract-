



// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./SimpleStorage.sol";
// // Inheritance & override 
// // ExtraStorage is Child Contract of SimpleStorage


contract ExtraStorage is SimpleStorage {
    function store(uint256 _favoriteNumber) public override {
        FavNum = _favoriteNumber + 5;
    }
}
// Virtual & override Keyword
