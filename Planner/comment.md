WIP, do not use yet

### repo

periphery


### filename

./src/libraries/Planner.sol

### summary

replace mload, mstore loop with efficent mcopy

### noted code diff


Old:


```solidity
function add(Plan memory plan, uint256 action, bytes memory param) internal pure returns (Plan memory) {
    bytes memory actions = new bytes(plan.params.length + 1);
    bytes[] memory params = new bytes[](plan.params.length + 1);
    

    for (uint256 i; i < params.length - 1; i++) {
        // Copy from plan.
        params[i] = plan.params[i];
        actions[i] = plan.actions[i];
    }
    params[params.length - 1] = param;
    actions[params.length - 1] = bytes1(uint8(action));

    plan.actions = actions;
    plan.params = params;

    return plan;
}
```

New:


```solidity
function addTest(Plan memory plan, uint256 action, bytes memory param) internal pure returns (Plan memory) {
    assembly ("memory-safe") {
        let actions := mload(64)

        let oldActionsPtr := mload(plan)

        let newSize := add(mload(oldActionsPtr),1)
        let newMemSize := mul(newSize, 32)
        mcopy(actions, oldActionsPtr, newMemSize)
        mstore(actions, newSize)
        let lastElPtr := add(actions, newMemSize)
        mstore(lastElPtr, action)

        mstore(plan, actions)

        mstore(64, add(lastElPtr, 32))

        let params := mload(64)

        let paramsOldPtrPtr := add(plan, 32)

        let paramsOldPtr := mload(paramsOldPtrPtr)

        let newSizeParams := add(mload(paramsOldPtr),1)
        let newMemSizeParams := mul(newSizeParams, 32)
        mcopy(params, paramsOldPtr, newMemSizeParams)
        mstore(params, newSizeParams)

        lastElPtr := add(params, newMemSizeParams)
        mstore(lastElPtr, param)

        mstore(paramsOldPtrPtr, params)

        mstore(64, add(lastElPtr, 32))
    }

    return plan;
}
```
