// SPDX-Liscense-Identifier: MIT

pragma solidity 0.6.0;

import "./BlockStorage.sol";

contract StorageFactory{

    BlockStorage[] public StorageArray;

    function createBlockStorage() public{
        BlockStorage blockstorage = new BlockStorage();
        StorageArray.push(blockstorage);
    }

    function bsStore(uint256 _blockStorageIndex, uint256 _blockStorageNumber) public{
        BlockStorage block1 = BlockStorage(address(StorageArray[_blockStorageIndex]));
        block1.store(_blockStorageNumber);
        //refactored: BlockStorage(address(StorageArray[_blockStorageIndex])).store(_blockStorageNumber);
    }

    function bsRetrive(uint256 _blockStorageIndex) public view returns(uint256){
        BlockStorage block1 = BlockStorage(address(StorageArray[_blockStorageIndex]));
        return block1.retrive();
        //refactored: BlockStorage(address(StorageArray[_blockStorageIndex])).retrive();
    }
}
