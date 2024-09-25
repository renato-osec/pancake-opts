### repo

periphery

### filename

src/pool-cl/libraries/PoolTicksCounter.sol

### summary

optimized arithmetic

### noted diff

Before:

```solidity

cache.tickAfterInitialized =
    ((bmAfter & (1 << bitPosAfter)) > 0) && ((tickAfter % tickSpacing) == 0) && (tickBefore > tickAfter);

...


cache.tickBeforeInitialized =
    ((bmBefore & (1 << bitPos)) > 0) && ((tickBefore % tickSpacing) == 0) && (tickBefore < tickAfter);
```

After:

```yul
assembly ("memory-safe") {
    let shiftedBit := shl(bitPosAfter, 1)
    let result := and(and(gt(and(bmAfter, shiftedBit), 0), iszero(smod(tickAfter, tickSpacing))), sgt(tickBefore, tickAfter))
    mstore(add(cache,160), result)
}

...


assembly ("memory-safe") {
    let shiftedBit := shl(bitPos, 1)
    let result := and(and(gt(and(bmBefore, shiftedBit), 0), iszero(smod(tickBefore, tickSpacing))), slt(tickBefore, tickAfter))
    mstore(add(cache,128), result)
}
```

