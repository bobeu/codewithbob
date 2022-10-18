//SPDX-License-Identifier : GNU

pragma solidity 0.8.17;

contract FileStructure {
  error FileNotFound(uint actual);
  event FileCreated(uint createdFile);

  enum Folder { FOLDER1, FOLDER2 }
  enum File { FILE1, FILE2, FILE3 }

  address public owner;

  bool canCreateFile;

  uint counter;

  struct MyCustomData {
    bytes32 fileIntegrity;
  }

  mapping (uint=>Folder) public folders;

  constructor() {}


  function createFile() public returns (bool) {}

}




