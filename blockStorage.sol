// SPDX=License-Identifier: MIT

pragma solidity ^0.6.0;

contract BlockStorage{
    uint256 favNumber = 69;
    
    Crew[] public crew;
    mapping(string => uint256) public favNumQuery;

    struct Crew{
        uint256 favNum;
        string name;
    }

    Crew public crewmate1 = Crew({favNum: 48, name: "Zoro"});

    function changeNum(uint256 _favNumber) public{
        favNumber = _favNumber;
    }

    function viewNum() public view returns(uint256){
        return favNumber;
    }

    function addCrewmate(string memory _name, uint256 _favNum) public {
        crew.push(Crew({favNum: _favNum, name: _name}));
        favNumQuery[_name] = _favNum;
    }
}
