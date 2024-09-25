### repo

core

### filename

src/pool-cl/libraries/CLPool.sol

### summary

Allow for better struct packing

### noted sol diff

New : 

```
struct SwapParams {
    int24 tickSpacing;
    bool zeroForOne;
    uint160 sqrtPriceLimitX96;
    uint24 lpFeeOverride;
    int256 amountSpecified;
}
```

Old :

```
struct SwapParams {
    int24 tickSpacing;
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
    uint24 lpFeeOverride;
}
```
