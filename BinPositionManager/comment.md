### repo

periphery

### filename

src/pool-bin/BinPositionManager.sol

### summary

more efficent condition for reverting

Old:

```solidity
if (params.deltaIds.length != params.distributionX.length) revert InputLengthMismatch();
if (params.deltaIds.length != params.distributionY.length) revert InputLengthMismatch();
```

New:

```solidity
uint256 deltaLen = params.deltaIds.length;
uint256 lenX = params.distributionX.length;
uint256 lenY = params.distributionY.length;

assembly ("memory-safe") {
    if iszero(and(eq(deltaLen, lenX), eq(deltaLen, lenY))) {
        //revert InputLengthMismatch();
        mstore(0, 0xaaad13f700000000000000000000000000000000000000000000000000000000)
        revert(0, 4)
    }
}
```
