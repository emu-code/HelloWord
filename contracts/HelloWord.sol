// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

contract HelloWorld{

    string public name;
    struct Birthdays{
        string name;
        string month;
        uint256 date;
    }
    Birthdays[] public birthday;
      mapping(string => uint256) public nameToBirthday;
      

    constructor(string memory _name)public {
        name = _name;
    }
     function retrieve() public view returns (string memory){
        return name;
    }

    function friendsBirthdays(string memory _name, string memory _month, uint256 _date) public{
        birthday.push(Birthdays( _name,  _month,  _date));
        nameToBirthday[_name] = _date;
    }




}