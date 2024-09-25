### repo

core

### filename

./src/pool-bin/libraries/BinPosition.sol

### summary

Use scratch space by leveraging shifting and masking. Update tests in test/pool-bin/libraries/BinPosition.t.sol accordingly to the new packing

### noted yul diff

New:

```yul
function calculatePositionKey(address owner, uint24 binId, bytes32 salt) internal pure returns (bytes32 key) {
    // dev same as `positionKey = keccak256(abi.encodePacked(binId, owner, salt))`
    // make salt, binId, owner to be tightly packed in memory
    // mstore in reverse order make sure latter can make use of the empty space in the former
    assembly ("memory-safe") {
        mstore(0x0, or(shl(160, binId), owner)) // binId at [0x09,0x0c), owner at [0x0c, 0x20)
        mstore(0x20, salt) // owner at [0x20, 0x40)
        key := keccak256(0x09, 55)
    }
}
```

Old:

```yul
function calculatePositionKey(address owner, uint24 binId, bytes32 salt) internal pure returns (bytes32 key) {
    // dev same as `positionKey = keccak256(abi.encodePacked(owner, binId, salt))`
    // make salt, binId, owner to be tightly packed in memory
    // mstore in reverse order make sure latter can make use of the empty space in the former
    assembly ("memory-safe") {
        let fmp := mload(0x40)
        mstore(add(fmp, 0x23), salt) // salt at [0x23, 0x43)
        mstore(add(fmp, 0x03), binId) // binId at [0x20, 0x23)
        mstore(fmp, owner) // owner at [0x0c, 0x20)
        key := keccak256(add(fmp, 0x0c), 0x37) // len is 55 bytes

        // now clean the memory we used
        mstore(add(fmp, 0x40), 0) // fmp+0x40 held salt
        mstore(add(fmp, 0x20), 0) // fmp+0x20 held binId, salt
        mstore(fmp, 0) // fmp held owner
    }
}
```
