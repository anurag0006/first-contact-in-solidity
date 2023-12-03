// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;

import "./simpleStorage.sol";


contract SimpleFactory {
    SimpleStorage[] public SimpleStorageArray;


    function CreateContract () public {

        SimpleStorage ss = new SimpleStorage();

        SimpleStorageArray.push(ss);
    }

    function sfStore(uint256 _simpleStorageIndex, int256  _simpleStorageNumber) public{
        SimpleStorage ss = SimpleStorageArray[_simpleStorageIndex];
        ss.store(_simpleStorageNumber);
    }

    function sfRetrive(uint256 _simpleStorageIndex) public view returns(int256) {
             SimpleStorage ss = SimpleStorageArray[_simpleStorageIndex];
             return ss.retrive();

    }
}