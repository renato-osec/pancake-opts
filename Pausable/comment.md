### repo

core

### filename
src/base/Pausable.sol

### summary

changing \_paused to a u256 eliminates masking and shifting ops in the modifier whenNotPaused

this reduces gas for users calling _swap_ and _donate_ which account for the vast majority of txs.

this increases gas for pausing and unpausing the contract, because a new hot slot has to be accessed (\_paused and \_admin resided in the same slot before)

### noted yul diff

Before :

```yul
function fun_requireNotPaused() {
    if (and(shr(160, sload(0x00)), 0xff)) {
        mstore(0x00, 0xd93c066500000000000000000000000000000000000000000000000000000000)
        revert(0x00, 4)
    }
}
```

After :

```yul
function fun_requireNotPaused()
{
    if eq(sload(0x01), 0x01)
    {
        mstore(0, 0xd93c066500000000000000000000000000000000000000000000000000000000)
        revert(0, 4)
    }
}
```
