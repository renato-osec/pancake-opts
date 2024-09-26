# gas optimizations

Forked core at d6d6824 , periphery at eecd480

## 1_BinPosition

### repo

pancake-v4-core

### filename

src/pool-bin/libraries/BinPosition.sol

### description

use scratch space by packing efficently in memory, by changing the packing order

## 2_BinPositionManager

### repo

pancake-v4-periphery

### filename

src/pool-bin/BinPositionManager.sol

### description

more efficent condition for reverting

## 3_CLPoolManager

### repo

pancake-v4-core

### filename

src/pool-cl/CLPoolManager.sol

### description

Reorder conditions to place the cheaper, more likely one first for short-circuiting

## 4_CLPosition

### repo

pancake-v4-core

### filename

src/pool-cl/libraries/CLPosition.sol

### description

Same as finding #1

## 5_CustomRevert

### repo

pancake-v4-core

### filename

./src/libraries/CustomRevert.sol

### summary

Avoid loading fmp and write from 0x0 as we revert immediatly

## 6_Pausable

### repo

pancake-v4-core

### filename
src/base/Pausable.sol

### summary

Use uint256 for cheaper execution gas for swap users

## 7_PoolTicksCounter

### repo

pancake-v4-periphery

### filename

src/pool-cl/libraries/PoolTicksCounter.sol

### summary

optimized arithmetic

## 8_Tick

### repo

pancake-v4-core

### filename

src/pool-cl/libraries/Tick.sol

### summary

Remove unneeded and

## 9_Tick

### repo

pancake-v4-core

### filename

src/pool-cl/libraries/Tick.sol

### summary

Minor arithmetic hack








