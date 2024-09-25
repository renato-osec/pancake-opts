### repo

core

### filename

./src/libraries/CustomRevert.sol

### summary

We can avoid loading the fmp and safely break the memory-safe guarantees by using 0x0 as we immediately and always revert

see : https://osec.io/blog/2023-07-28-solidity-compilers-memory-safety

### noted yul diff

New:

```yul
assembly ("memory-safe") {
    let size := returndatasize()
    // Encode selector, address, offset, size, data
    mstore(0, selector)
    mstore(add(0, 0x04), addr)
    mstore(add(0, 0x24), 0x40)
    mstore(add(0, 0x44), size)
    returndatacopy(add(0, 0x64), 0, size)

    // Ensure the size is a multiple of 32 bytes
    let encodedSize := add(0x64, mul(div(add(size, 31), 32), 32))
    revert(0, encodedSize)
}
```

Old:

```yul
assembly ("memory-safe") {
    let size := returndatasize()
    let fmp := mload(0x40)

    // Encode selector, address, offset, size, data
    mstore(fmp, selector)
    mstore(add(fmp, 0x04), addr)
    mstore(add(fmp, 0x24), 0x40)
    mstore(add(fmp, 0x44), size)
    returndatacopy(add(fmp, 0x64), 0, size)

    // Ensure the size is a multiple of 32 bytes
    let encodedSize := add(0x64, mul(div(add(size, 31), 32), 32))
    revert(fmp, encodedSize)
}
