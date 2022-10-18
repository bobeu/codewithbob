// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SolidityDataTypes {
 uint16 public counter = 65530;
 bool canIncrement;
 bytes somedata;
 string myName = "Bob";
 enum StageOFLife { CHILDHOOD, ADULTHOOD }

 StageOFLife public stages ;

 struct Profile {
   uint8 age;
   string name;
   string otherNames;
 }

 mapping (address=>Profile) names;

 address public owner = 0xA7B2387bF4C259e188751B46859fcA7E2043FEFD;
 
 constructor(uint _counter) {
    counter = uint16(_counter);
 }
 
 function regsiter(string memory _name) public {
   names[msg.sender] = Profile(50, _name, "GoodGuy");
 }

 function createSomeData(string memory link) public {
   somedata = bytes(link);
 }
 function setData(string memory name) public {
   myName = name;
 }

 function increment() public {
   require(canIncrement, "");
   counter ++;
 }
}


