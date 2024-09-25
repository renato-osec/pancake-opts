### repo 

core

### filename

./src/pool-cl/CLPoolManager.sol

### summary

switched the conditions around to better leverage shortcircuiting. Put the less costly and more likely condition first

### noted solidity code

```yul
if (paused() && params.liquidityDelta > 0) revert PoolPaused();
```

