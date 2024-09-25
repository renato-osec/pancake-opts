### repo

core

### filename

src/pool-cl/libraries/CLPosition.sol

### summary

Use scratch space by leveraging shifting and masking. Update tests in test/pool-cl/libraries/CLPosition.t.sol accordingly to the new packing

### noted yul diff

New:

```yul
function calculatePositionKey(address owner, int24 tickLower, int24 tickUpper, bytes32 salt)
    internal
    pure
    returns (bytes32 key)
{
    // same as `positionKey = keccak256(abi.encodePacked(tickLower, tickUpper, owner, salt))`
    // make salt, tickUpper, tickLower, owner to be tightly packed in memory
    // mstore8(s) overwrite the 0 padding of the address
    assembly ("memory-safe") {
        mstore(0x0, or(shl(160, and(0xFFFFFF, tickUpper)), or(shl(184,tickLower),owner))) // tickLower at [0x06, 0x09), tickUpper at [0x09,0x0c), owner at [0x0c, 0x20)
        mstore(0x20, salt) // owner at [0x20, 0x40)
        key := keccak256(0x06,58)
    }

}
```

Old:

```yul
function calculatePositionKey(address owner, int24 tickLower, int24 tickUpper, bytes32 salt)
    internal
    pure
    returns (bytes32 key)
{
    // same as `positionKey = keccak256(abi.encodePacked(owner, tickLower, tickUpper, salt))`
    // make salt, tickUpper, tickLower, owner to be tightly packed in memory
    // mstore in reverse order make sure latter can make use of the empty space in the former
    assembly ("memory-safe") {
        let fmp := mload(0x40)
        mstore(add(fmp, 0x26), salt) // salt at [0x26, 0x46)
        mstore(add(fmp, 0x06), tickUpper) // tickUpper at [0x23, 0x26)
        mstore(add(fmp, 0x03), tickLower) // tickLower at [0x20, 0x23)
        mstore(fmp, owner) // owner at [0x0c, 0x20)
        key := keccak256(add(fmp, 0x0c), 0x3a) // len is 58 bytes

        // now clean the memory we used since we don't need it anymore
        mstore(add(fmp, 0x40), 0) // fmp+0x40 held salt
        mstore(add(fmp, 0x20), 0) // fmp+0x20 held tickLower, tickUpper, salt
        mstore(fmp, 0) // fmp held owner
    }
}
```
