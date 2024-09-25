### repo

core

### filename

./src/pool-cl/libraries/Tick.sol

### summary

Small arithmetic hack, the result of iszero is either 1 or 0 so the xor operator is equal to !=

### noted yul diff

Before:

```yul
flipped = (liquidityGrossAfter == 0) != (liquidityGrossBefore == 0);
```

After:

```yul
assembly ("memory-safe") {
    flipped := xor(iszero(liquidityGrossBefore), iszero(liquidityGrossAfter))
}
```
