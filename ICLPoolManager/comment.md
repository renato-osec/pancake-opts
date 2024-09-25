### repo

core

### filename

src/pool-cl/interfaces/ICLPoolManager.sol

### summary

struct packing opt

### noted yul diff

Old:

```yul
struct SwapParams {
    bool zeroForOne;
    int256 amountSpecified;
    uint160 sqrtPriceLimitX96;
}
```

New:

```yul
struct SwapParams {
    bool zeroForOne;
    uint160 sqrtPriceLimitX96;
    int256 amountSpecified;
}
```

