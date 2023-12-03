// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "./simpleStorage.sol";




contract ExtraStorage is SimpleStorage{

    function store(int256 _num) public override   {
        favNum = _num + 12;
    }

}