// SPDX-License-Identifier: MIT
pragma solidity ^0.8.22;



contract simpleStorage {
    int256 public favNum;


    function setFavNum(int256 _num) public {
        favNum = _num;
    }

    struct People{
        string name;
        int256 favnumber;
    }

    mapping (string => int256) public nameToFavNumber;

    People[] public people;



    function addPersonToArr(string memory _name, int256 _favNum) public {
         people.push(People(_name,_favNum));
         nameToFavNumber[_name] = _favNum;
    }
    
}



