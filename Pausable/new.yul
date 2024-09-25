/// @use-src 34:"src/Extsload.sol", 35:"src/Owner.sol", 36:"src/ProtocolFees.sol", 39:"src/base/Ownable.sol", 40:"src/base/Pausable.sol", 43:"src/interfaces/IExtsload.sol", 46:"src/interfaces/IPoolManager.sol", 49:"src/interfaces/IProtocolFees.sol", 64:"src/pool-bin/BinPoolManager.sol", 67:"src/pool-bin/interfaces/IBinPoolManager.sol"
object "BinPoolManager_52828" {
    code {
        {
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            let _1 := memoryguard(0xa0)
            if callvalue() { revert(0, 0) }
            let programSize := datasize("BinPoolManager_52828")
            let argSize := sub(codesize(), programSize)
            let newFreePtr := add(_1, and(add(argSize, 31), not(31)))
            if or(gt(newFreePtr, sub(shl(64, 1), 1)), lt(newFreePtr, _1))
            {
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(224, 0x4e487b71))
                mstore(4, 0x41)
                revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x24)
            }
            mstore(64, newFreePtr)
            codecopy(_1, programSize, argSize)
            if slt(sub(add(_1, argSize), _1), 32)
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            let value := mload(_1)
            if iszero(eq(value, and(value, sub(shl(160, 1), 1))))
            {
                revert(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            let _2 := sload(/** @src -1:-1:-1 */ 0)
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            sstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ or(and(_2, not(sub(shl(160, 1), 1))), /** @src 35:409:419  "msg.sender" */ caller()))
            /// @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)"
            let _3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
            /// @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)"
            log3(/** @src -1:-1:-1 */ 0, 0, /** @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)" */ 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(_2, sub(shl(160, 1), 1)), /** @src 35:409:419  "msg.sender" */ caller())
            /// @src 36:1261:1275  "vault = _vault"
            mstore(128, value)
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            sstore(/** @src 64:1721:1724  "100" */ 0x03, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ or(and(sload(/** @src 64:1721:1724  "100" */ 0x03), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ not(shl(160, 65535))), shl(162, 25)))
            sstore(/** @src 64:1818:1826  "2 ** 128" */ 0x04, shl(128, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 1))
            let _4 := datasize("BinPoolManager_52828_deployed")
            codecopy(_3, dataoffset("BinPoolManager_52828_deployed"), _4)
            setimmutable(_3, "48490", mload(/** @src 36:1261:1275  "vault = _vault" */ 128))
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            return(_3, _4)
        }
    }
    /// @use-src 34:"src/Extsload.sol", 35:"src/Owner.sol", 36:"src/ProtocolFees.sol", 39:"src/base/Ownable.sol", 40:"src/base/Pausable.sol", 52:"src/libraries/BipsLibrary.sol", 53:"src/libraries/CustomRevert.sol", 54:"src/libraries/Hooks.sol", 55:"src/libraries/LPFeeLibrary.sol", 56:"src/libraries/ParseBytes.sol", 57:"src/libraries/ProtocolFeeLibrary.sol", 58:"src/libraries/SafeCast.sol", 61:"src/libraries/math/Encoded.sol", 62:"src/libraries/math/ParametersHelper.sol", 64:"src/pool-bin/BinPoolManager.sol", 66:"src/pool-bin/interfaces/IBinHooks.sol", 68:"src/pool-bin/libraries/BinHelper.sol", 69:"src/pool-bin/libraries/BinHooks.sol", 70:"src/pool-bin/libraries/BinPool.sol", 71:"src/pool-bin/libraries/BinPoolParametersHelper.sol", 72:"src/pool-bin/libraries/BinPosition.sol", 73:"src/pool-bin/libraries/Constants.sol", 74:"src/pool-bin/libraries/FeeHelper.sol", 75:"src/pool-bin/libraries/PriceHelper.sol", 76:"src/pool-bin/libraries/math/BitMath.sol", 77:"src/pool-bin/libraries/math/LiquidityConfigurations.sol", 78:"src/pool-bin/libraries/math/PackedUint128Math.sol", 79:"src/pool-bin/libraries/math/SafeCast.sol", 80:"src/pool-bin/libraries/math/TreeMath.sol", 81:"src/pool-bin/libraries/math/Uint128x128Math.sol", 82:"src/pool-bin/libraries/math/Uint256x256Math.sol", 108:"src/types/BalanceDelta.sol", 109:"src/types/BeforeSwapDelta.sol", 110:"src/types/Currency.sol", 111:"src/types/PoolId.sol"
    object "BinPoolManager_52828_deployed" {
        code {
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(64, 128)
                if iszero(lt(calldatasize(), 4))
                {
                    switch shr(224, calldataload(0))
                    case 0x0e2d484a {
                        external_fun_poolIdToPoolKey()
                    }
                    case 0x10e9ec4a { external_fun_MAX_BIN_STEP() }
                    case 0x1e2eaeaf { external_fun_extsload() }
                    case 0x2d771389 {
                        external_fun_setProtocolFeeController()
                    }
                    case 0x3f4ba83a { external_fun_unpause() }
                    case 0x43cf4b08 { external_fun_initialize() }
                    case 0x4580c3c5 { external_fun_getBin() }
                    case 0x57738174 { external_fun_donate() }
                    case 0x5c975abb { external_fun_paused() }
                    case 0x5ca4643e {
                        external_fun_MIN_BIN_SHARE_FOR_DONATE()
                    }
                    case 0x5cf7d255 { external_fun_setMaxBinStep() }
                    case 0x7df880e3 { external_fun_MIN_BIN_STEP() }
                    case 0x8161b874 {
                        external_fun_collectProtocolFees()
                    }
                    case 0x81a250a1 { external_fun_setProtocolFee() }
                    case 0x8456cb59 { external_fun_pause() }
                    case 0x8da5cb5b { external_fun_owner() }
                    case 0x911a63b7 { external_fun_swap() }
                    case 0x97e8cd4e {
                        external_fun_protocolFeesAccrued()
                    }
                    case 0xa4a9a549 { external_fun_getPosition() }
                    case 0xad4cc2d3 {
                        external_fun_updateDynamicLPFee()
                    }
                    case 0xb5217bb4 { external_fun_pools() }
                    case 0xbc5348f2 { external_fun_burn() }
                    case 0xbf7b7286 {
                        external_fun_getNextNonEmptyBin()
                    }
                    case 0xc3b226f7 {
                        external_fun_setMinBinSharesForDonate()
                    }
                    case 0xc815641c { external_fun_getSlot0() }
                    case 0xdbd035ff { external_fun_extsload_48407() }
                    case 0xebc413e0 { external_fun_mint() }
                    case 0xf02de3b2 {
                        external_fun_protocolFeeController()
                    }
                    case 0xf2fde38b {
                        external_fun_transferOwnership()
                    }
                    case 0xfbfa77cf { external_fun_vault() }
                }
                revert(0, 0)
            }
            function abi_decode_userDefinedValueType_PoolId() -> value
            { value := calldataload(4) }
            function abi_decode_t_userDefinedValueType_PoolId() -> value
            { value := calldataload(100) }
            function mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(key) -> dataSlot
            {
                mstore(0, key)
                mstore(0x20, /** @src 64:4791:4796  "pools" */ 0x05)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                dataSlot := keccak256(0, 0x40)
            }
            function mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21928(key) -> dataSlot
            {
                mstore(0, key)
                mstore(0x20, /** @src 64:4852:4867  "poolIdToPoolKey" */ 0x06)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                dataSlot := keccak256(0, 0x40)
            }
            function mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(slot, key) -> dataSlot
            {
                mstore(0, key)
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }
            function extract_from_storage_value_offsett_userDefinedValueType_Currency(slot_value) -> value
            {
                value := and(slot_value, 0xffffffffffffffffffffffffffffffffffffffff)
            }
            function cleanup_from_storage_uint24(value) -> cleaned
            {
                cleaned := and(value, 0xffffff)
            }
            function extract_from_storage_value_offsett_uint24(slot_value) -> value
            {
                value := and(shr(160, slot_value), 0xffffff)
            }
            function abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_contract_IHooks_contract_IPoolManager_uint24_bytes32(headStart, value0, value1, value2, value3, value4, value5) -> tail
            {
                tail := add(headStart, 192)
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 32), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 64), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 96), and(value3, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 128), and(value4, 0xffffff))
                mstore(add(headStart, 160), value5)
            }
            function external_fun_poolIdToPoolKey()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ abi_decode_userDefinedValueType_PoolId())
                mstore(32, /** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ 6)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)
                let value := and(sload(/** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ dataSlot), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let value_1 := and(sload(/** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ add(dataSlot, 1)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let value_2 := and(sload(/** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ add(dataSlot, 2)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := sload(/** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ add(dataSlot, 3))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src 64:1898:1958  "mapping(PoolId id => PoolKey poolKey) public poolIdToPoolKey" */ add(dataSlot, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4))
                let memPos := mload(0x40)
                return(memPos, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_contract_IHooks_contract_IPoolManager_uint24_bytes32(memPos, value, value_1, value_2, and(_1, 0xffffffffffffffffffffffffffffffffffffffff), and(shr(160, _1), 0xffffff), _2), memPos))
            }
            function abi_decode(headStart, dataEnd)
            {
                if slt(sub(dataEnd, headStart), 0) { revert(0, 0) }
            }
            function cleanup_from_storage_uint16(value) -> cleaned
            { cleaned := and(value, 0xffff) }
            function abi_encode_uint16(value0) -> tail
            {
                tail := 36
                mstore(4, and(value0, 0xffff))
            }
            function external_fun_MAX_BIN_STEP()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let value := and(shr(160, sload(/** @src 64:1683:1724  "uint16 public override MAX_BIN_STEP = 100" */ 3)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)
                let memPos := mload(64)
                mstore(memPos, value)
                return(memPos, 32)
            }
            function external_fun_extsload()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(4)
                /// @src 34:583:682  "assembly (\"memory-safe\") {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 34:583:682  "assembly (\"memory-safe\") {..." */ sload(value))
                return(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)
            }
            function validator_revert_contract_IProtocolFeeController(value)
            {
                if iszero(eq(value, and(value, 0xffffffffffffffffffffffffffffffffffffffff))) { revert(0, 0) }
            }
            function external_fun_setProtocolFeeController()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := calldataload(4)
                validator_revert_contract_IProtocolFeeController(value)
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
                sstore(/** @src 36:3872:3906  "protocolFeeController = controller" */ 0x03, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ or(and(sload(/** @src 36:3872:3906  "protocolFeeController = controller" */ 0x03), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffff0000000000000000000000000000000000000000), _1))
                /// @src 36:3921:3970  "ProtocolFeeControllerUpdated(address(controller))"
                log2(/** @src -1:-1:-1 */ 0, 0, /** @src 36:3921:3970  "ProtocolFeeControllerUpdated(address(controller))" */ 0xb4bd8ef53df690b9943d3318996006dbb82a25f54719d8c8035b516a2a5b8acc, _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function external_fun_unpause()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 55:1449:1456  "100_000"
                sstore(/** @src 40:2036:2047  "_paused = 0" */ 0x01, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                /// @src 40:2062:2082  "Unpaused(msg.sender)"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                mstore(_1, /** @src 40:2071:2081  "msg.sender" */ caller())
                /// @src 40:2062:2082  "Unpaused(msg.sender)"
                log1(_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32, /** @src 40:2062:2082  "Unpaused(msg.sender)" */ 0x5db9ee0a495bf2e6ff9c91a7834c1ba4fdd244a5e8aa4e537bd38aeae4b073aa)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(0, 0)
            }
            function panic_error_0x41()
            {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }
            function finalize_allocation_21919(memPtr)
            {
                let newFreePtr := add(memPtr, 0xc0)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }
            function finalize_allocation_21953(memPtr)
            {
                let newFreePtr := add(memPtr, 32)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }
            function finalize_allocation_21959(memPtr)
            {
                let newFreePtr := add(memPtr, 96)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }
            function finalize_allocation(memPtr, size)
            {
                let newFreePtr := add(memPtr, and(add(size, 31), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }
            function allocate_memory() -> memPtr
            {
                memPtr := mload(64)
                finalize_allocation(memPtr, 128)
            }
            function allocate_memory_21972() -> memPtr
            {
                memPtr := mload(64)
                finalize_allocation(memPtr, 192)
            }
            function abi_decode_uint24() -> value
            {
                value := calldataload(196)
                if iszero(eq(value, and(value, 0xffffff))) { revert(0, 0) }
            }
            function abi_decode_uint24_21930() -> value
            {
                value := calldataload(36)
                if iszero(eq(value, and(value, 0xffffff))) { revert(0, 0) }
            }
            function abi_decode_uint24_21951() -> value
            {
                value := calldataload(68)
                if iszero(eq(value, and(value, 0xffffff))) { revert(0, 0) }
            }
            function abi_decode_struct_PoolKey(end) -> value
            {
                if slt(add(end, 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0xc0) { revert(0, 0) }
                let memPtr := mload(64)
                finalize_allocation_21919(memPtr)
                value := memPtr
                let value_1 := calldataload(4)
                validator_revert_contract_IProtocolFeeController(value_1)
                mstore(memPtr, value_1)
                let value_2 := calldataload(36)
                validator_revert_contract_IProtocolFeeController(value_2)
                mstore(add(memPtr, 32), value_2)
                let value_3 := calldataload(68)
                validator_revert_contract_IProtocolFeeController(value_3)
                mstore(add(memPtr, 64), value_3)
                let value_4 := calldataload(100)
                validator_revert_contract_IProtocolFeeController(value_4)
                mstore(add(memPtr, 96), value_4)
                let value_5 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_5 := calldataload(132)
                if iszero(eq(value_5, and(value_5, 0xffffff))) { revert(0, 0) }
                mstore(add(memPtr, 128), value_5)
                let value_6 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_6 := calldataload(164)
                mstore(add(memPtr, 160), value_6)
            }
            function abi_decode_bytes_calldata(offset, end) -> arrayPos, length
            {
                if iszero(slt(add(offset, 0x1f), end)) { revert(0, 0) }
                length := calldataload(offset)
                if gt(length, 0xffffffffffffffff) { revert(0, 0) }
                arrayPos := add(offset, 0x20)
                if gt(add(add(offset, length), 0x20), end) { revert(0, 0) }
            }
            function external_fun_initialize()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 256)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let value1 := abi_decode_uint24()
                let offset := calldataload(228)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value2, value3 := abi_decode_bytes_calldata(add(4, offset), calldatasize())
                /// @src 64:2159:2221  "if (address(this) != poolManager) revert PoolManagerMismatch()"
                if /** @src 64:2163:2191  "address(this) != poolManager" */ iszero(eq(/** @src 64:2171:2175  "this" */ address(), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mload(/** @src 64:3802:3817  "key.poolManager" */ add(value0, 96)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)))
                /// @src 64:2159:2221  "if (address(this) != poolManager) revert PoolManagerMismatch()"
                {
                    /// @src 64:2200:2221  "PoolManagerMismatch()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:2200:2221  "PoolManagerMismatch()" */ 0x8379e32200000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4)
                }
                /// @src 64:3851:3865  "key.parameters"
                let _1 := add(value0, 160)
                /// @src 64:3851:3878  "key.parameters.getBinStep()"
                let expr := fun_getBinStep(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:3851:3865  "key.parameters" */ _1))
                /// @src 64:3892:3914  "binStep < MIN_BIN_STEP"
                let _2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 64:3892:3914  "binStep < MIN_BIN_STEP" */ expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)
                /// @src 64:3888:3947  "if (binStep < MIN_BIN_STEP) revert BinStepTooSmall(binStep)"
                if /** @src 64:3892:3914  "binStep < MIN_BIN_STEP" */ lt(_2, /** @src 64:1639:1640  "1" */ 0x01)
                /// @src 64:3888:3947  "if (binStep < MIN_BIN_STEP) revert BinStepTooSmall(binStep)"
                {
                    /// @src 64:3923:3947  "BinStepTooSmall(binStep)"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:3923:3947  "BinStepTooSmall(binStep)" */ 0x92a59fa000000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:3923:3947  "BinStepTooSmall(binStep)" */ abi_encode_uint16(expr))
                }
                /// @src 64:3957:4016  "if (binStep > MAX_BIN_STEP) revert BinStepTooLarge(binStep)"
                if /** @src 64:3961:3983  "binStep > MAX_BIN_STEP" */ gt(_2, cleanup_from_storage_uint16(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_uint16(sload(/** @src 64:3971:3983  "MAX_BIN_STEP" */ 0x03))))
                /// @src 64:3957:4016  "if (binStep > MAX_BIN_STEP) revert BinStepTooLarge(binStep)"
                {
                    /// @src 64:3992:4016  "BinStepTooLarge(binStep)"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:3992:4016  "BinStepTooLarge(binStep)" */ 0x1c511ddd00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:3992:4016  "BinStepTooLarge(binStep)" */ abi_encode_uint16(expr))
                }
                /// @src 64:4030:4043  "key.currency0"
                let _3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:4030:4043  "key.currency0" */ value0))
                /// @src 64:4047:4060  "key.currency1"
                let _4 := add(value0, 32)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _5 := extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:4047:4060  "key.currency1" */ _4))
                /// @src 64:4026:4189  "if (key.currency0 >= key.currency1) {..."
                if /** @src 64:4030:4060  "key.currency0 >= key.currency1" */ fun_greaterThanOrEqualTo(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _5)
                /// @src 64:4026:4189  "if (key.currency0 >= key.currency1) {..."
                {
                    /// @src 64:4115:4145  "Currency.unwrap(key.currency0)"
                    let expr_1 := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _3)
                    /// @src 64:4147:4177  "Currency.unwrap(key.currency1)"
                    let expr_2 := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _5)
                    /// @src 64:4083:4178  "CurrenciesInitializedOutOfOrder(Currency.unwrap(key.currency0), Currency.unwrap(key.currency1))"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:4083:4178  "CurrenciesInitializedOutOfOrder(Currency.unwrap(key.currency0), Currency.unwrap(key.currency1))" */ 0xcaf75f4900000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:4083:4178  "CurrenciesInitializedOutOfOrder(Currency.unwrap(key.currency0), Currency.unwrap(key.currency1))" */ abi_encode_address_address(expr_1, expr_2))
                }
                /// @src 64:4268:4327  "BinPoolParametersHelper.OFFSET_MOST_SIGNIFICANT_UNUSED_BITS"
                fun_checkUnusedBitsAllZero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:4252:4266  "key.parameters" */ _1))
                /// @src 64:4372:4375  "key"
                fun_validateHookConfig(value0)
                /// @src 64:4423:4426  "key"
                fun_validatePermissionsConflict(value0)
                /// @src 64:4554:4561  "key.fee"
                let _6 := add(value0, 128)
                /// @src 64:4554:4579  "key.fee.getInitialLPFee()"
                let expr_3 := fun_getInitialLPFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 64:4554:4561  "key.fee" */ _6)))
                /// @src 64:4604:4632  "LPFeeLibrary.TEN_PERCENT_FEE"
                fun_validate_21926(expr_3)
                /// @src 64:4685:4693  "hookData"
                fun_beforeInitialize(value0, value1, value2, value3)
                /// @src 64:4717:4727  "key.toId()"
                let expr_4 := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:4717:4727  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 64:4835:4840  "lpFee"
                fun_initialize(/** @src 64:4791:4800  "pools[id]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr_4), /** @src 64:4835:4840  "lpFee" */ value1, /** @src 64:4759:4781  "_fetchProtocolFee(key)" */ fun_fetchProtocolFee(value0), /** @src 64:4835:4840  "lpFee" */ expr_3)
                /// @src 55:1449:1456  "100_000"
                copy_struct_to_storage_from_struct_PoolKey_to_struct_PoolKey(/** @src 64:4852:4871  "poolIdToPoolKey[id]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21928(expr_4), /** @src 55:1449:1456  "100_000" */ value0)
                /// @src 64:5033:5046  "key.currency0"
                let _7 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:5033:5046  "key.currency0" */ value0))
                /// @src 64:5048:5061  "key.currency1"
                let _8 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:5048:5061  "key.currency1" */ _4))
                /// @src 64:5063:5072  "key.hooks"
                let _address := /** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:5063:5072  "key.hooks" */ add(value0, 64)))
                /// @src 64:5074:5081  "key.fee"
                let _9 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 64:5074:5081  "key.fee" */ _6))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _10 := mload(/** @src 64:5083:5097  "key.parameters" */ _1)
                /// @src 64:5018:5108  "Initialize(id, key.currency0, key.currency1, key.hooks, key.fee, key.parameters, activeId)"
                let _11 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:5063:5072  "key.hooks" */ 64)
                /// @src 64:5018:5108  "Initialize(id, key.currency0, key.currency1, key.hooks, key.fee, key.parameters, activeId)"
                log4(_11, sub(abi_encode_contract_IHooks_uint24_bytes32_uint24(_11, _address, _9, _10, value1), _11), 0xddfde5903015c0eb1671976c6c8f760f1328bec57f15286b6bdab2f955cab9c9, expr_4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 64:5018:5108  "Initialize(id, key.currency0, key.currency1, key.hooks, key.fee, key.parameters, activeId)" */ _7, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), and(/** @src 64:5018:5108  "Initialize(id, key.currency0, key.currency1, key.hooks, key.fee, key.parameters, activeId)" */ _8, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 64:5159:5167  "hookData"
                fun_afterInitialize(value0, value1, value2, value3)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function abi_encode_uint128_uint128_uint256_uint256(headStart, value0, value1, value2, value3) -> tail
            {
                tail := add(headStart, 128)
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 32), and(value1, 0xffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 64), value2)
                mstore(add(headStart, 96), value3)
            }
            function external_fun_getBin()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 64)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_userDefinedValueType_PoolId()
                let value1 := abi_decode_uint24_21930()
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value0)
                mstore(32, /** @src 64:2917:2932  "poolIdToPoolKey" */ 0x06)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64)
                let memPtr := mload(64)
                finalize_allocation_21919(memPtr)
                mstore(memPtr, and(sload(dataSlot), 0xffffffffffffffffffffffffffffffffffffffff))
                write_to_memory_userDefinedValueType_Currency(add(memPtr, 32), and(sload(add(dataSlot, 1)), 0xffffffffffffffffffffffffffffffffffffffff))
                write_to_memory_userDefinedValueType_Currency(add(memPtr, 64), extract_from_storage_value_offsett_userDefinedValueType_Currency(sload(add(dataSlot, 2))))
                let _1 := sload(add(dataSlot, 3))
                write_to_memory_userDefinedValueType_Currency(add(memPtr, 96), extract_from_storage_value_offsett_userDefinedValueType_Currency(_1))
                write_to_memory_uint24(add(memPtr, 128), extract_from_storage_value_offsett_uint24(_1))
                let _2 := sload(add(dataSlot, 4))
                let _3 := add(memPtr, 160)
                mstore(_3, _2)
                /// @src 64:3002:3011  "pools[id]"
                let _4 := mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(value0)
                /// @src 64:3002:3054  "pools[id].getBin(key.parameters.getBinStep(), binId)"
                let expr_component, expr_component_1, expr_component_2, expr_component_3 := fun_getBin(_4, /** @src 64:3019:3046  "key.parameters.getBinStep()" */ fun_getBinStep(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:3019:3033  "key.parameters" */ _3)), /** @src 64:3002:3054  "pools[id].getBin(key.parameters.getBinStep(), binId)" */ value1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(64)
                return(memPos, sub(abi_encode_uint128_uint128_uint256_uint256(memPos, expr_component, expr_component_1, expr_component_2, expr_component_3), memPos))
            }
            function abi_decode_uint128() -> value
            {
                value := calldataload(196)
                if iszero(eq(value, and(value, 0xffffffffffffffffffffffffffffffff))) { revert(0, 0) }
            }
            function abi_decode_uint128_21935() -> value
            {
                value := calldataload(228)
                if iszero(eq(value, and(value, 0xffffffffffffffffffffffffffffffff))) { revert(0, 0) }
            }
            function abi_encode_userDefinedValueType_BalanceDelta_uint24(headStart, value0, value1) -> tail
            {
                tail := add(headStart, 64)
                mstore(headStart, value0)
                mstore(add(headStart, 32), and(value1, 0xffffff))
            }
            function external_fun_donate()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 288)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let value1 := abi_decode_uint128()
                let value2 := abi_decode_uint128_21935()
                let offset := calldataload(260)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value3, value4 := abi_decode_bytes_calldata(add(4, offset), calldatasize())
                /// @src 40:1233:1305  "modifier whenNotPaused() {..."
                fun_requireNotPaused()
                /// @src 64:10575:10585  "key.toId()"
                let expr := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:10575:10585  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 64:10624:10633  "pools[id]"
                let _1 := mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr)
                /// @src 64:10643:10668  "pool.checkPoolInitialized"
                fun_checkPoolInitialized(_1)
                /// @src 64:10726:10734  "hookData"
                fun_beforeDonate(value0, value1, value2, value3, value4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src 64:10849:10885  "pool.shareOfBin[pool.slot0.activeId]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 64:10849:10864  "pool.shareOfBin" */ add(_1, 2), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint24(sload(/** @src 64:10865:10884  "pool.slot0.activeId" */ _1))))
                /// @src 64:10895:11022  "if (currentBinShare <= MIN_BIN_SHARE_FOR_DONATE) {..."
                if /** @src 64:10899:10942  "currentBinShare <= MIN_BIN_SHARE_FOR_DONATE" */ iszero(gt(_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(4)))
                /// @src 64:10895:11022  "if (currentBinShare <= MIN_BIN_SHARE_FOR_DONATE) {..."
                {
                    /// @src 64:10965:11011  "InsufficientBinShareForDonate(currentBinShare)"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:10965:11011  "InsufficientBinShareForDonate(currentBinShare)" */ 0x0359efd700000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:10965:11011  "InsufficientBinShareForDonate(currentBinShare)" */ abi_encode_uint256_21937(_2))
                }
                /// @src 64:11049:11107  "pool.donate(key.parameters.getBinStep(), amount0, amount1)"
                let expr_component, expr_component_1 := fun_donate(_1, /** @src 64:11061:11088  "key.parameters.getBinStep()" */ fun_getBinStep(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:11061:11075  "key.parameters" */ add(value0, 160))), /** @src 64:11049:11107  "pool.donate(key.parameters.getBinStep(), amount0, amount1)" */ value1, value2)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := and(/** @src 64:11118:11123  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 64:11147:11160  "key.currency0"
                let _4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:11147:11160  "key.currency0" */ value0))
                /// @src 64:11162:11175  "key.currency1"
                let _5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:11162:11175  "key.currency1" */ add(value0, 32)))
                /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(extcodesize(_3))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _6 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                mstore(_6, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _7 := call(gas(), _3, /** @src -1:-1:-1 */ 0, /** @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _6, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_6, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _4, _5, expr_component, /** @src 64:11184:11194  "msg.sender" */ caller()), /** @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _6), _6, /** @src -1:-1:-1 */ 0)
                /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(_7) { revert_forward() }
                if _7
                {
                    finalize_allocation(_6, /** @src -1:-1:-1 */ 0)
                    /// @src 64:11118:11195  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                    abi_decode(_6, _6)
                }
                /// @src 64:11336:11399  "Donate(id, msg.sender, delta.amount0(), delta.amount1(), binId)"
                let _8 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                /// @src 64:11336:11399  "Donate(id, msg.sender, delta.amount0(), delta.amount1(), binId)"
                log3(_8, sub(abi_encode_int128_int128_uint24(_8, /** @src 108:2074:2157  "assembly (\"memory-safe\") {..." */ sar(128, /** @src 64:11359:11374  "delta.amount0()" */ expr_component), /** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ signextend(15, /** @src 64:11376:11391  "delta.amount1()" */ expr_component), /** @src 64:11336:11399  "Donate(id, msg.sender, delta.amount0(), delta.amount1(), binId)" */ expr_component_1), _8), 0xfc18146d5586318640b3febea90b094b834f09982812258534a1c07bdda12954, expr, /** @src 64:11184:11194  "msg.sender" */ caller())
                /// @src 64:11454:11462  "hookData"
                fun_afterDonate(value0, value1, value2, value3, value4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(64)
                return(memPos, sub(abi_encode_userDefinedValueType_BalanceDelta_uint24(memPos, expr_component, expr_component_1), memPos))
            }
            function cleanup_bool(value) -> cleaned
            {
                cleaned := iszero(iszero(value))
            }
            function external_fun_paused()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                /// @src 40:1463:1482  "return _paused == 1"
                let var := /** @src 40:1470:1482  "_paused == 1" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 40:1470:1477  "_paused" */ 0x01), 0x01)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(64)
                mstore(memPos, var)
                return(memPos, 32)
            }
            function abi_encode_uint256_21937(value0) -> tail
            {
                tail := 36
                mstore(4, value0)
            }
            function abi_encode_uint256(headStart, value0) -> tail
            {
                tail := add(headStart, 32)
                mstore(headStart, value0)
            }
            function external_fun_MIN_BIN_SHARE_FOR_DONATE()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let _1 := sload(4)
                let memPos := mload(64)
                mstore(memPos, _1)
                return(memPos, 32)
            }
            function validator_revert_uint16(value)
            {
                if iszero(eq(value, and(value, 0xffff))) { revert(0, 0) }
            }
            function external_fun_setMaxBinStep()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := calldataload(4)
                validator_revert_uint16(value)
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 64:11596:11622  "maxBinStep <= MIN_BIN_STEP" */ value, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)
                /// @src 64:11592:11661  "if (maxBinStep <= MIN_BIN_STEP) revert MaxBinStepTooSmall(maxBinStep)"
                if /** @src 64:11596:11622  "maxBinStep <= MIN_BIN_STEP" */ iszero(gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, /** @src 64:1639:1640  "1" */ 0x01))
                /// @src 64:11592:11661  "if (maxBinStep <= MIN_BIN_STEP) revert MaxBinStepTooSmall(maxBinStep)"
                {
                    /// @src 64:11631:11661  "MaxBinStepTooSmall(maxBinStep)"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:11631:11661  "MaxBinStepTooSmall(maxBinStep)" */ 0xb4e5279b00000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(4, _1)
                    /// @src 64:11631:11661  "MaxBinStepTooSmall(maxBinStep)"
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 36)
                }
                let _2 := sload(/** @src 64:11672:11697  "MAX_BIN_STEP = maxBinStep" */ 0x03)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                sstore(/** @src 64:11672:11697  "MAX_BIN_STEP = maxBinStep" */ 0x03, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ or(and(_2, 0xffffffffffffffffffff0000ffffffffffffffffffffffffffffffffffffffff), /** @src 55:1449:1456  "100_000" */ and(shl(160, /** @src 64:11596:11622  "maxBinStep <= MIN_BIN_STEP" */ value), /** @src 55:1449:1456  "100_000" */ 0xffff0000000000000000000000000000000000000000)))
                /// @src 64:11712:11737  "SetMaxBinStep(maxBinStep)"
                let _3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                mstore(_3, _1)
                /// @src 64:11712:11737  "SetMaxBinStep(maxBinStep)"
                log1(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32, /** @src 64:11712:11737  "SetMaxBinStep(maxBinStep)" */ 0x02172f85720dcdece86093a50de7b9578583a2b7a567992be89d92868feba494)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function external_fun_MIN_BIN_STEP()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let memPos := mload(64)
                mstore(memPos, /** @src 64:1639:1640  "1" */ 0x01)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(memPos, 32)
            }
            function abi_decode_uint256() -> value
            { value := calldataload(68) }
            function external_fun_collectProtocolFees()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 96)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := calldataload(4)
                validator_revert_contract_IProtocolFeeController(value)
                let value_1 := calldataload(36)
                validator_revert_contract_IProtocolFeeController(value_1)
                let value2 := abi_decode_uint256()
                /// @src 36:4156:4228  "if (msg.sender != address(protocolFeeController)) revert InvalidCaller()"
                if /** @src 36:4160:4204  "msg.sender != address(protocolFeeController)" */ iszero(eq(/** @src 36:4160:4170  "msg.sender" */ caller(), /** @src 36:4160:4204  "msg.sender != address(protocolFeeController)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 36:4174:4204  "address(protocolFeeController)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(sload(/** @src 36:4182:4203  "protocolFeeController" */ 0x03))))))
                /// @src 36:4156:4228  "if (msg.sender != address(protocolFeeController)) revert InvalidCaller()"
                {
                    /// @src 36:4213:4228  "InvalidCaller()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 36:4213:4228  "InvalidCaller()" */ 0x48f5c3ed00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4)
                }
                /// @src 36:4257:4311  "(amount == 0) ? protocolFeesAccrued[currency] : amount"
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 36:4257:4311  "(amount == 0) ? protocolFeesAccrued[currency] : amount"
                switch /** @src 36:4258:4269  "amount == 0" */ iszero(value2)
                case /** @src 36:4257:4311  "(amount == 0) ? protocolFeesAccrued[currency] : amount" */ 0 { expr := value2 }
                default {
                    expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 36:4273:4302  "protocolFeesAccrued[currency]" */ mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(value_1))
                }
                /// @src 36:4321:4350  "protocolFeesAccrued[currency]"
                let _1 := mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(value_1)
                /// @src 55:1449:1456  "100_000"
                sstore(_1, /** @src 36:4321:4369  "protocolFeesAccrued[currency] -= amountCollected" */ checked_sub_uint256(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 36:4321:4369  "protocolFeesAccrued[currency] -= amountCollected" */ _1), expr))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := and(/** @src 36:4379:4384  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                if iszero(extcodesize(_2))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                let _3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                mstore(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xeb78b43500000000000000000000000000000000000000000000000000000000)
                /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                let _4 := call(gas(), _2, /** @src -1:-1:-1 */ 0, /** @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)" */ _3, sub(abi_encode_userDefinedValueType_Currency_uint256_address(add(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)" */ value_1, expr, value), _3), _3, /** @src -1:-1:-1 */ 0)
                /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                if iszero(_4) { revert_forward() }
                if _4
                {
                    finalize_allocation(_3, /** @src -1:-1:-1 */ 0)
                    /// @src 36:4379:4433  "vault.collectFee(currency, amountCollected, recipient)"
                    abi_decode(_3, _3)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(64)
                return(memPos, sub(abi_encode_uint256(memPos, expr), memPos))
            }
            function external_fun_setProtocolFee()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 224)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let value1 := abi_decode_uint24()
                /// @src 36:1498:1570  "if (msg.sender != address(protocolFeeController)) revert InvalidCaller()"
                if /** @src 36:1502:1546  "msg.sender != address(protocolFeeController)" */ iszero(eq(/** @src 36:1502:1512  "msg.sender" */ caller(), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(sload(/** @src 36:1524:1545  "protocolFeeController" */ 0x03), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)))
                /// @src 36:1498:1570  "if (msg.sender != address(protocolFeeController)) revert InvalidCaller()"
                {
                    /// @src 36:1555:1570  "InvalidCaller()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 36:1555:1570  "InvalidCaller()" */ 0x48f5c3ed00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4)
                }
                /// @src 36:1580:1654  "if (!newProtocolFee.validate()) revert ProtocolFeeTooLarge(newProtocolFee)"
                if /** @src 36:1584:1610  "!newProtocolFee.validate()" */ iszero(/** @src 36:1585:1610  "newProtocolFee.validate()" */ fun_validate(value1))
                /// @src 36:1580:1654  "if (!newProtocolFee.validate()) revert ProtocolFeeTooLarge(newProtocolFee)"
                {
                    /// @src 36:1619:1654  "ProtocolFeeTooLarge(newProtocolFee)"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 36:1619:1654  "ProtocolFeeTooLarge(newProtocolFee)" */ 0xa7abe2f700000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(4, and(value1, 0xffffff))
                    /// @src 36:1619:1654  "ProtocolFeeTooLarge(newProtocolFee)"
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 36)
                }
                /// @src 36:1676:1686  "key.toId()"
                let expr := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 36:1676:1686  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 36:1716:1730  "newProtocolFee"
                fun_setProtocolFee(expr, value1)
                /// @src 36:1746:1784  "ProtocolFeeUpdated(id, newProtocolFee)"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                /// @src 36:1746:1784  "ProtocolFeeUpdated(id, newProtocolFee)"
                log2(_1, sub(abi_encode_uint24(_1, value1), _1), 0xe9c42593e71f84403b84352cd168d693e2c9fcd1fdbcc3feb21d92b43e6696f9, expr)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function external_fun_pause()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 40:1233:1305  "modifier whenNotPaused() {..."
                fun_requireNotPaused()
                /// @src 55:1449:1456  "100_000"
                sstore(/** @src 40:1889:1890  "1" */ 0x01, 0x01)
                /// @src 40:1905:1923  "Paused(msg.sender)"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                mstore(_1, /** @src 40:1912:1922  "msg.sender" */ caller())
                /// @src 40:1905:1923  "Paused(msg.sender)"
                log1(_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32, /** @src 40:1905:1923  "Paused(msg.sender)" */ 0x62e78cea01bee320cd4e420270b5ea74000d11b0c9f74754ebdbfc544b05a258)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(0, 0)
            }
            function external_fun_owner()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let value := and(sload(0), 0xffffffffffffffffffffffffffffffffffffffff)
                let memPos := mload(64)
                mstore(memPos, value)
                return(memPos, 32)
            }
            function abi_decode_bool() -> value
            {
                value := calldataload(196)
                if iszero(eq(value, iszero(iszero(value)))) { revert(0, 0) }
            }
            function cleanup_int128(value) -> cleaned
            {
                cleaned := signextend(15, value)
            }
            function external_fun_swap()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 288)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let value1 := abi_decode_bool()
                let value := calldataload(228)
                let _1 := signextend(15, value)
                if iszero(eq(value, _1))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let offset := calldataload(260)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value3, value4 := abi_decode_bytes_calldata(add(4, offset), calldatasize())
                /// @src 40:1233:1305  "modifier whenNotPaused() {..."
                fun_requireNotPaused()
                /// @src 64:5422:5478  "if (amountSpecified == 0) revert AmountSpecifiedIsZero()"
                if /** @src 64:5426:5446  "amountSpecified == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                /// @src 64:5422:5478  "if (amountSpecified == 0) revert AmountSpecifiedIsZero()"
                {
                    /// @src 64:5455:5478  "AmountSpecifiedIsZero()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:5455:5478  "AmountSpecifiedIsZero()" */ 0x6821401700000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4)
                }
                /// @src 64:5501:5511  "key.toId()"
                let expr := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:5501:5511  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 64:5550:5559  "pools[id]"
                let _2 := mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr)
                /// @src 64:5569:5594  "pool.checkPoolInitialized"
                fun_checkPoolInitialized(_2)
                /// @src 64:5698:5759  "BinHooks.beforeSwap(key, swapForY, amountSpecified, hookData)"
                let expr_component, expr_component_1, expr_component_2 := fun_beforeSwap(value0, value1, value, value3, value4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                pop(allocate_and_zero_memory_struct_struct_SwapState())
                /// @src 64:5998:6025  "key.parameters.getBinStep()"
                let expr_1 := fun_getBinStep(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:5998:6012  "key.parameters" */ add(value0, 160)))
                /// @src 64:5908:6145  "BinPool.SwapParams({..."
                let expr_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ allocate_memory()
                /// @src 64:5908:6145  "BinPool.SwapParams({..."
                write_to_memory_bool(expr_mpos, value1)
                write_to_memory_uint16(add(expr_mpos, 32), expr_1)
                write_to_memory_uint24(add(expr_mpos, 64), expr_component_2)
                write_to_memory_int128(add(expr_mpos, 96), expr_component)
                /// @src 64:5881:6159  "pool.swap(..."
                let expr_component_3, expr_component_mpos := fun_swap(_2, expr_mpos)
                /// @src 64:6206:6231  "state.feeAmountToProtocol"
                let _3 := add(expr_component_mpos, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 96)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _4 := mload(/** @src 64:6206:6231  "state.feeAmountToProtocol" */ _3)
                /// @src 64:6202:6446  "if (state.feeAmountToProtocol > 0) {..."
                if /** @src 64:6206:6235  "state.feeAmountToProtocol > 0" */ iszero(iszero(_4))
                /// @src 64:6202:6446  "if (state.feeAmountToProtocol > 0) {..."
                {
                    /// @src 64:6259:6332  "protocolFeesAccrued[key.currency0] += state.feeAmountToProtocol.decodeX()"
                    let _5 := convert_uint128_to_uint256(/** @src 64:6297:6332  "state.feeAmountToProtocol.decodeX()" */ convert_uint128_to_uint256(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _4))
                    /// @src 64:6259:6293  "protocolFeesAccrued[key.currency0]"
                    let _6 := mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:6279:6292  "key.currency0" */ value0)))
                    /// @src 55:1449:1456  "100_000"
                    sstore(_6, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(sload(/** @src 64:6259:6332  "protocolFeesAccrued[key.currency0] += state.feeAmountToProtocol.decodeX()" */ _6), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _5))
                    /// @src 64:6354:6427  "protocolFeesAccrued[key.currency1] += state.feeAmountToProtocol.decodeY()"
                    let _7 := convert_uint128_to_uint256(/** @src 64:6392:6427  "state.feeAmountToProtocol.decodeY()" */ fun_decodeY(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:6392:6417  "state.feeAmountToProtocol" */ _3)))
                    /// @src 64:6354:6388  "protocolFeesAccrued[key.currency1]"
                    let _8 := mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:6374:6387  "key.currency1" */ add(value0, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 32))))
                    /// @src 55:1449:1456  "100_000"
                    sstore(_8, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(sload(/** @src 64:6354:6427  "protocolFeesAccrued[key.currency1] += state.feeAmountToProtocol.decodeY()" */ _8), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _7))
                }
                /// @src 64:6680:6694  "state.activeId"
                let _9 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 64:6680:6694  "state.activeId" */ expr_component_mpos))
                /// @src 64:6696:6709  "state.swapFee"
                let _10 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 64:6696:6709  "state.swapFee" */ add(expr_component_mpos, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64)))
                /// @src 64:6711:6728  "state.protocolFee"
                let _11 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint16(mload(/** @src 64:6711:6728  "state.protocolFee" */ add(expr_component_mpos, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 32)))
                /// @src 64:6608:6742  "Swap(..."
                let _12 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64)
                /// @src 64:6608:6742  "Swap(..."
                log3(_12, sub(abi_encode_int128_int128_uint24_uint24_uint16(_12, /** @src 108:2074:2157  "assembly (\"memory-safe\") {..." */ sar(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 128, /** @src 64:6646:6661  "delta.amount0()" */ expr_component_3), /** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ signextend(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 15, /** @src 64:6663:6678  "delta.amount1()" */ expr_component_3), /** @src 64:6608:6742  "Swap(..." */ _9, _10, _11), _12), 0x3e8aae37f890eb1f9d63dd4d2062f3f0be757848a0f0760e4f3e53dad556e861, expr, /** @src 64:6634:6644  "msg.sender" */ caller())
                /// @src 64:6816:6900  "BinHooks.afterSwap(key, swapForY, amountSpecified, delta, hookData, beforeSwapDelta)"
                let expr_component_4, expr_component_5 := fun_afterSwap(value0, value1, value, expr_component_3, value3, value4, expr_component_1)
                /// @src 64:6911:7074  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                if /** @src 64:6915:6958  "hookDelta != BalanceDeltaLibrary.ZERO_DELTA" */ cleanup_bool(expr_component_5)
                /// @src 64:6911:7074  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _13 := and(/** @src 64:6974:6979  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                    /// @src 64:7003:7016  "key.currency0"
                    let _14 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:7003:7016  "key.currency0" */ value0))
                    /// @src 64:7018:7031  "key.currency1"
                    let _15 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:7018:7031  "key.currency1" */ add(value0, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 32)))
                    /// @src 64:7044:7062  "address(key.hooks)"
                    let expr_2 := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:7052:7061  "key.hooks" */ add(value0, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64))))
                    /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(extcodesize(_13))
                    {
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        revert(/** @src -1:-1:-1 */ 0, 0)
                    }
                    /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _16 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64)
                    /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    mstore(_16, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                    /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _17 := call(gas(), _13, /** @src -1:-1:-1 */ 0, /** @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))" */ _16, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_16, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))" */ _14, _15, expr_component_5, expr_2), _16), _16, /** @src -1:-1:-1 */ 0)
                    /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(_17) { revert_forward() }
                    if _17
                    {
                        finalize_allocation(_16, /** @src -1:-1:-1 */ 0)
                        /// @src 64:6974:7063  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                        abi_decode(_16, _16)
                    }
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _18 := and(/** @src 64:7084:7089  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 64:7113:7126  "key.currency0"
                let _19 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:7113:7126  "key.currency0" */ value0))
                /// @src 64:7128:7141  "key.currency1"
                let _20 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:7128:7141  "key.currency1" */ add(value0, /** @src 64:5908:6145  "BinPool.SwapParams({..." */ 32)))
                /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(extcodesize(_18))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _21 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64)
                /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                mstore(_21, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _22 := call(gas(), _18, /** @src -1:-1:-1 */ 0, /** @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _21, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_21, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _19, _20, expr_component_4, /** @src 64:6634:6644  "msg.sender" */ caller()), /** @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _21), _21, /** @src -1:-1:-1 */ 0)
                /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(_22) { revert_forward() }
                if _22
                {
                    finalize_allocation(_21, /** @src -1:-1:-1 */ 0)
                    /// @src 64:7084:7161  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                    abi_decode(_21, _21)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(/** @src 64:5908:6145  "BinPool.SwapParams({..." */ 64)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(memPos, sub(abi_encode_uint256(memPos, expr_component_4), memPos))
            }
            function mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(key) -> dataSlot
            {
                mstore(0, and(key, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(0x20, /** @src 36:4273:4292  "protocolFeesAccrued" */ 0x02)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                dataSlot := keccak256(0, 0x40)
            }
            function external_fun_protocolFeesAccrued()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := calldataload(4)
                validator_revert_contract_IProtocolFeeController(value)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(32, /** @src 36:765:836  "mapping(Currency currency => uint256 amount) public protocolFeesAccrued" */ 2)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := sload(keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40))
                let memPos := mload(0x40)
                mstore(memPos, _1)
                return(memPos, 32)
            }
            function abi_encode_struct_Info(headStart, value0) -> tail
            {
                tail := add(headStart, 32)
                mstore(headStart, mload(value0))
            }
            function external_fun_getPosition()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 128)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_userDefinedValueType_PoolId()
                let value := calldataload(36)
                validator_revert_contract_IProtocolFeeController(value)
                let value2 := abi_decode_uint24_21951()
                let value3 := abi_decode_t_userDefinedValueType_PoolId()
                let memPtr := mload(64)
                finalize_allocation_21953(memPtr)
                mstore(memPtr, /** @src -1:-1:-1 */ 0)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value0)
                mstore(32, /** @src 64:3297:3302  "pools" */ 0x05)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 72:2376:2416  "calculatePositionKey(owner, binId, salt)" */ fun_calculatePositionKey(/** @src 64:3297:3340  "pools[id].positions.get(owner, binId, salt)" */ value, value2, value3))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(32, /** @src 64:3297:3316  "pools[id].positions" */ add(dataSlot, 3))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot_1 := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64)
                let memPtr_1 := mload(64)
                finalize_allocation_21953(memPtr_1)
                mstore(memPtr_1, sload(dataSlot_1))
                let memPos := mload(64)
                return(memPos, sub(abi_encode_struct_Info(memPos, memPtr_1), memPos))
            }
            function external_fun_updateDynamicLPFee()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 224)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let value1 := abi_decode_uint24()
                /// @src 64:12119:12180  "!key.fee.isDynamicLPFee() || msg.sender != address(key.hooks)"
                let expr := /** @src 64:12119:12144  "!key.fee.isDynamicLPFee()" */ iszero(/** @src 64:12120:12144  "key.fee.isDynamicLPFee()" */ fun_isDynamicLPFee(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 71:648:650  "32" */ mload(/** @src 64:12120:12127  "key.fee" */ add(value0, 128)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)))
                /// @src 64:12119:12180  "!key.fee.isDynamicLPFee() || msg.sender != address(key.hooks)"
                if /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ iszero(expr)
                /// @src 64:12119:12180  "!key.fee.isDynamicLPFee() || msg.sender != address(key.hooks)"
                {
                    expr := /** @src 64:12148:12180  "msg.sender != address(key.hooks)" */ iszero(eq(/** @src 64:12148:12158  "msg.sender" */ caller(), /** @src 64:12148:12180  "msg.sender != address(key.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 64:12162:12180  "address(key.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:12170:12179  "key.hooks" */ add(value0, 64)))))))
                }
                /// @src 64:12115:12221  "if (!key.fee.isDynamicLPFee() || msg.sender != address(key.hooks)) revert UnauthorizedDynamicLPFeeUpdate()"
                if expr
                {
                    /// @src 64:12189:12221  "UnauthorizedDynamicLPFeeUpdate()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 64:12189:12221  "UnauthorizedDynamicLPFeeUpdate()" */ 0x30d2164100000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4)
                }
                /// @src 64:12256:12284  "LPFeeLibrary.TEN_PERCENT_FEE"
                fun_validate_21926(value1)
                /// @src 64:12308:12318  "key.toId()"
                let expr_1 := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:12308:12318  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 64:12347:12362  "newDynamicLPFee"
                fun_setLPFee(/** @src 64:12328:12337  "pools[id]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr_1), /** @src 64:12347:12362  "newDynamicLPFee" */ value1)
                /// @src 64:12378:12418  "DynamicLPFeeUpdated(id, newDynamicLPFee)"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                /// @src 64:12378:12418  "DynamicLPFeeUpdated(id, newDynamicLPFee)"
                log2(_1, sub(abi_encode_uint24(_1, value1), _1), 0x14b2b80e0d62303dc85494859f35a84579160aafbd650180ddf526b1ab547bd6, expr_1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function write_to_memory_uint24(memPtr, value)
            {
                mstore(memPtr, and(value, 0xffffff))
            }
            function read_from_storage_reference_type_struct_Slot0(slot) -> value
            {
                let memPtr := mload(64)
                finalize_allocation_21959(memPtr)
                value := memPtr
                let _1 := sload(slot)
                mstore(memPtr, and(_1, 0xffffff))
                mstore(add(memPtr, 32), and(shr(24, _1), 0xffffff))
                mstore(add(memPtr, 64), and(shr(48, _1), 0xffffff))
            }
            function external_fun_pools()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ abi_decode_userDefinedValueType_PoolId())
                mstore(32, /** @src 64:1833:1891  "mapping(PoolId id => BinPool.State poolState) public pools" */ 5)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)
                /// @src 64:1833:1891  "mapping(PoolId id => BinPool.State poolState) public pools"
                let ret_mpos := read_from_storage_reference_type_struct_Slot0(dataSlot)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := sload(/** @src 64:1833:1891  "mapping(PoolId id => BinPool.State poolState) public pools" */ add(dataSlot, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4))
                let memPos := mload(0x40)
                mstore(memPos, and(mload(ret_mpos), 0xffffff))
                mstore(add(memPos, 32), and(mload(add(ret_mpos, 32)), 0xffffff))
                mstore(add(memPos, 0x40), and(mload(add(ret_mpos, 0x40)), 0xffffff))
                mstore(add(memPos, 96), _1)
                return(memPos, 128)
            }
            function array_allocation_size_array_uint256_dyn(length) -> size
            {
                if gt(length, 0xffffffffffffffff) { panic_error_0x41() }
                size := add(shl(5, length), 0x20)
            }
            function abi_decode_array_uint256_dyn(offset, end) -> array
            {
                if iszero(slt(add(offset, 0x1f), end)) { revert(0, 0) }
                let length := calldataload(offset)
                let _1 := array_allocation_size_array_uint256_dyn(length)
                let memPtr := mload(64)
                finalize_allocation(memPtr, _1)
                let dst := memPtr
                mstore(memPtr, length)
                dst := add(memPtr, 0x20)
                let srcEnd := add(add(offset, shl(5, length)), 0x20)
                if gt(srcEnd, end)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let src := add(offset, 0x20)
                for { } lt(src, srcEnd) { src := add(src, 0x20) }
                {
                    let value := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    value := calldataload(src)
                    mstore(dst, value)
                    dst := add(dst, 0x20)
                }
                array := memPtr
            }
            function external_fun_burn()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 256)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let offset := calldataload(196)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                if slt(add(sub(calldatasize(), offset), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0x60)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPtr := mload(64)
                finalize_allocation_21959(memPtr)
                let offset_1 := calldataload(add(4, offset))
                if gt(offset_1, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(memPtr, abi_decode_array_uint256_dyn(add(add(offset, offset_1), 4), calldatasize()))
                let offset_2 := calldataload(add(offset, 36))
                if gt(offset_2, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(add(memPtr, 32), abi_decode_array_uint256_dyn(add(add(offset, offset_2), 4), calldatasize()))
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(add(offset, 68))
                mstore(add(memPtr, 64), value)
                let offset_3 := calldataload(228)
                if gt(offset_3, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value2, value3 := abi_decode_bytes_calldata(add(4, offset_3), calldatasize())
                let ret := fun_burn(value0, memPtr, value2, value3)
                let memPos := mload(64)
                return(memPos, sub(abi_encode_uint256(memPos, ret), memPos))
            }
            function abi_encode_uint24_22074(value0) -> tail
            {
                tail := 36
                mstore(/** @src 70:13468:13495  "BinPool__BurnZeroAmount(id)" */ 4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value0, 0xffffff))
            }
            function abi_encode_uint24(headStart, value0) -> tail
            {
                tail := add(headStart, 32)
                mstore(headStart, and(value0, 0xffffff))
            }
            function external_fun_getNextNonEmptyBin()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 96)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(4)
                let value_1 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_1 := calldataload(36)
                if iszero(eq(value_1, iszero(iszero(value_1))))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value2 := abi_decode_uint24_21951()
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value)
                mstore(32, /** @src 64:3559:3564  "pools" */ 0x05)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let ret := /** @src 64:3559:3604  "pools[id].getNextNonEmptyBin(swapForY, binId)" */ fun_getNextNonEmptyBin(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64), value_1, value2)
                let memPos := mload(64)
                mstore(memPos, and(ret, 0xffffff))
                return(memPos, 32)
            }
            function external_fun_setMinBinSharesForDonate()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(4)
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 55:1449:1456  "100_000"
                sstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4, /** @src 55:1449:1456  "100_000" */ value)
                /// @src 64:11932:11969  "SetMinBinSharesForDonate(minBinShare)"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                mstore(_1, value)
                /// @src 64:11932:11969  "SetMinBinSharesForDonate(minBinShare)"
                log1(_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32, /** @src 64:11932:11969  "SetMinBinSharesForDonate(minBinShare)" */ 0xd752b38d4cbf2c0d2ceecee3d2f43840ec77bd9cde6b733b94cc065bdab931a3)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function external_fun_getSlot0()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(4)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value)
                mstore(32, /** @src 64:2562:2567  "pools" */ 0x05)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let converted := read_from_storage_reference_type_struct_Slot0(keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40))
                let cleaned := and(/** @src 71:648:650  "32" */ mload(/** @src 64:2596:2610  "slot0.activeId" */ converted), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                let cleaned_1 := and(/** @src 71:648:650  "32" */ mload(/** @src 64:2612:2629  "slot0.protocolFee" */ add(converted, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)), 0xffffff)
                let cleaned_2 := and(/** @src 71:648:650  "32" */ mload(/** @src 64:2631:2642  "slot0.lpFee" */ add(converted, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)), 0xffffff)
                let memPos := mload(0x40)
                mstore(memPos, cleaned)
                mstore(add(memPos, 32), cleaned_1)
                mstore(add(memPos, 0x40), cleaned_2)
                return(memPos, 96)
            }
            function abi_encode_array_bytes32_dyn(value, pos) -> end
            {
                let length := mload(value)
                mstore(pos, length)
                pos := add(pos, 0x20)
                let srcPtr := add(value, 0x20)
                let i := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                for { } lt(i, length) { i := add(i, 1) }
                {
                    mstore(pos, mload(srcPtr))
                    pos := add(pos, 0x20)
                    srcPtr := add(srcPtr, 0x20)
                }
                end := pos
            }
            function external_fun_extsload_48407()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let offset := calldataload(4)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                if iszero(slt(add(offset, 35), calldatasize()))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let length := calldataload(add(4, offset))
                if gt(length, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := shl(5, length)
                if gt(add(add(offset, _1), 36), calldatasize())
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 34:819:1755  "assembly (\"memory-safe\") {..."
                let usr$memptr := mload(0x40)
                let usr$memptr_1 := usr$memptr
                mstore(usr$memptr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)
                /// @src 34:819:1755  "assembly (\"memory-safe\") {..."
                mstore(add(usr$memptr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32), /** @src 34:819:1755  "assembly (\"memory-safe\") {..." */ length)
                usr$memptr := add(usr$memptr, 0x40)
                let _2 := add(usr$memptr_1, _1)
                let usr$end := add(_2, 0x40)
                let usr$calldataptr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(offset, 36)
                /// @src 34:819:1755  "assembly (\"memory-safe\") {..."
                for { } 1 { }
                {
                    mstore(usr$memptr, sload(calldataload(usr$calldataptr)))
                    usr$memptr := add(usr$memptr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)
                    /// @src 34:819:1755  "assembly (\"memory-safe\") {..."
                    usr$calldataptr := add(usr$calldataptr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)
                    /// @src 34:819:1755  "assembly (\"memory-safe\") {..."
                    if iszero(lt(usr$memptr, usr$end)) { break }
                }
                return(usr$memptr_1, add(sub(_2, usr$memptr_1), 0x40))
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function abi_encode_userDefinedValueType_BalanceDelta_struct_MintArrays(headStart, value0, value1) -> tail
            {
                mstore(headStart, value0)
                mstore(add(headStart, 32), 64)
                let memberValue0 := mload(value1)
                mstore(add(headStart, 64), 0x60)
                let tail_1 := abi_encode_array_bytes32_dyn(memberValue0, add(headStart, 160))
                let memberValue0_1 := mload(add(value1, 32))
                mstore(add(headStart, 0x60), add(sub(tail_1, headStart), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc0))
                let tail_2 := abi_encode_array_bytes32_dyn(memberValue0_1, tail_1)
                let memberValue0_2 := mload(add(value1, 64))
                mstore(add(headStart, 128), add(sub(tail_2, headStart), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc0))
                tail := abi_encode_array_bytes32_dyn(memberValue0_2, tail_2)
            }
            function external_fun_mint()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 256)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value0 := abi_decode_struct_PoolKey(calldatasize())
                let offset := calldataload(196)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := add(4, offset)
                if slt(add(sub(calldatasize(), offset), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 96)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let offset_1 := calldataload(228)
                if gt(offset_1, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value2, value3 := abi_decode_bytes_calldata(add(4, offset_1), calldatasize())
                pop(allocate_and_zero_memory_struct_struct_MintArrays())
                /// @src 40:1233:1305  "modifier whenNotPaused() {..."
                fun_requireNotPaused()
                /// @src 64:7469:7479  "key.toId()"
                let expr := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:7469:7479  "key.toId()" */ value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 192)
                /// @src 64:7518:7527  "pools[id]"
                let _2 := mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr)
                /// @src 64:7537:7562  "pool.checkPoolInitialized"
                fun_checkPoolInitialized(_2)
                /// @src 64:7600:7642  "BinHooks.beforeMint(key, params, hookData)"
                let expr_1 := fun_beforeMint(value0, _1, value2, value3)
                /// @src 64:7902:7925  "params.liquidityConfigs"
                let expr_offset, expr_length := access_calldata_tail_array_bytes32_dyn_calldata(_1, _1)
                /// @src 64:7953:7968  "params.amountIn"
                let value := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value := calldataload(/** @src 64:7953:7968  "params.amountIn" */ add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ offset, /** @src 64:7953:7968  "params.amountIn" */ 36))
                /// @src 64:7995:8022  "key.parameters.getBinStep()"
                let expr_2 := fun_getBinStep(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:7995:8009  "key.parameters" */ add(value0, 160)))
                /// @src 64:8092:8103  "params.salt"
                let value_1 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_1 := calldataload(/** @src 64:8092:8103  "params.salt" */ add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ offset, /** @src 64:8092:8103  "params.salt" */ 68))
                /// @src 64:7815:8118  "BinPool.MintParams({..."
                let expr_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ allocate_memory_21972()
                /// @src 64:7815:8118  "BinPool.MintParams({..."
                write_to_memory_userDefinedValueType_Currency(expr_mpos, /** @src 64:7856:7866  "msg.sender" */ caller())
                /// @src 64:7815:8118  "BinPool.MintParams({..."
                write_to_memory_uint16(add(expr_mpos, /** @src 64:7953:7968  "params.amountIn" */ 32), /** @src 64:7815:8118  "BinPool.MintParams({..." */ expr_2)
                write_to_memory_uint24(add(expr_mpos, /** @src 64:8092:8103  "params.salt" */ 64), /** @src 64:7815:8118  "BinPool.MintParams({..." */ expr_1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 64:7815:8118  "BinPool.MintParams({..." */ add(expr_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 96), abi_decode_available_length_array_bytes32_dyn(/** @src 64:7815:8118  "BinPool.MintParams({..." */ expr_offset, expr_length, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ calldatasize()))
                mstore(/** @src 64:7815:8118  "BinPool.MintParams({..." */ add(expr_mpos, 128), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value)
                mstore(/** @src 64:7815:8118  "BinPool.MintParams({..." */ add(expr_mpos, /** @src 64:7995:8009  "key.parameters" */ 160), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value_1)
                /// @src 64:7792:8128  "pool.mint(..."
                let expr_component, expr_component_1, expr_component_mpos, expr_component_2 := fun_mint(_2, expr_mpos)
                /// @src 64:8163:8377  "if (feeAmountToProtocol > 0) {..."
                if /** @src 64:8167:8190  "feeAmountToProtocol > 0" */ iszero(iszero(expr_component_1))
                /// @src 64:8163:8377  "if (feeAmountToProtocol > 0) {..."
                {
                    /// @src 64:8210:8244  "protocolFeesAccrued[key.currency0]"
                    let _3 := mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8230:8243  "key.currency0" */ value0)))
                    /// @src 55:1449:1456  "100_000"
                    sstore(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(sload(/** @src 64:8210:8277  "protocolFeesAccrued[key.currency0] += feeAmountToProtocol.decodeX()" */ _3), /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 64:8248:8277  "feeAmountToProtocol.decodeX()" */ expr_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)))
                    /// @src 64:8295:8329  "protocolFeesAccrued[key.currency1]"
                    let _4 := mapping_index_access_mapping_userDefinedValueType_Currency_uint256_of_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8315:8328  "key.currency1" */ add(value0, /** @src 64:7953:7968  "params.amountIn" */ 32))))
                    /// @src 55:1449:1456  "100_000"
                    sstore(_4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(sload(/** @src 64:8295:8362  "protocolFeesAccrued[key.currency1] += feeAmountToProtocol.decodeY()" */ _4), /** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(/** @src 64:7815:8118  "BinPool.MintParams({..." */ 128, /** @src 64:8333:8362  "feeAmountToProtocol.decodeY()" */ expr_component_1)))
                }
                /// @src 64:8561:8574  "mintArray.ids"
                let _mpos := mload(expr_component_mpos)
                /// @src 64:8589:8606  "mintArray.amounts"
                let _mpos_1 := mload(add(expr_component_mpos, /** @src 64:7953:7968  "params.amountIn" */ 32))
                /// @src 64:8527:8659  "Mint(..."
                let _5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:8092:8103  "params.salt" */ 64)
                /// @src 64:8527:8659  "Mint(..."
                log3(_5, sub(abi_encode_array_uint256_dyn_bytes32_array_bytes32_dyn_bytes32_bytes32(_5, _mpos, value_1, _mpos_1, expr_component_2, expr_component_1), _5), 0x7b6bc49b385af8644341f07a67cd976bf9daf2bdd5d71668e651a3a792e318e1, expr, /** @src 64:7856:7866  "msg.sender" */ caller())
                /// @src 64:8723:8771  "BinHooks.afterMint(key, params, delta, hookData)"
                let expr_component_3, expr_component_4 := fun_afterMint(value0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ abi_decode_struct_MintParams(/** @src 64:8723:8771  "BinHooks.afterMint(key, params, delta, hookData)" */ _1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ calldatasize()), /** @src 64:8723:8771  "BinHooks.afterMint(key, params, delta, hookData)" */ expr_component, value2, value3)
                /// @src 64:8782:8945  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                if /** @src 64:8786:8829  "hookDelta != BalanceDeltaLibrary.ZERO_DELTA" */ cleanup_bool(expr_component_4)
                /// @src 64:8782:8945  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _6 := and(/** @src 64:8845:8850  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                    /// @src 64:8874:8887  "key.currency0"
                    let _7 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8874:8887  "key.currency0" */ value0))
                    /// @src 64:8889:8902  "key.currency1"
                    let _8 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8889:8902  "key.currency1" */ add(value0, /** @src 64:7953:7968  "params.amountIn" */ 32)))
                    /// @src 64:8915:8933  "address(key.hooks)"
                    let expr_3 := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8923:8932  "key.hooks" */ add(value0, /** @src 64:8092:8103  "params.salt" */ 64))))
                    /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(extcodesize(_6))
                    {
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        revert(/** @src -1:-1:-1 */ 0, 0)
                    }
                    /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _9 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:8092:8103  "params.salt" */ 64)
                    /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    mstore(_9, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                    /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _10 := call(gas(), _6, /** @src -1:-1:-1 */ 0, /** @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))" */ _9, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_9, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))" */ _7, _8, expr_component_4, expr_3), _9), _9, /** @src -1:-1:-1 */ 0)
                    /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(_10) { revert_forward() }
                    if _10
                    {
                        finalize_allocation(_9, /** @src -1:-1:-1 */ 0)
                        /// @src 64:8845:8934  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                        abi_decode(_9, _9)
                    }
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _11 := and(/** @src 64:8954:8959  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 64:8983:8996  "key.currency0"
                let _12 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8983:8996  "key.currency0" */ value0))
                /// @src 64:8998:9011  "key.currency1"
                let _13 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:8998:9011  "key.currency1" */ add(value0, /** @src 64:7953:7968  "params.amountIn" */ 32)))
                /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(extcodesize(_11))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _14 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:8092:8103  "params.salt" */ 64)
                /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                mstore(_14, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _15 := call(gas(), _11, /** @src -1:-1:-1 */ 0, /** @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _14, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_14, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4), /** @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _12, _13, expr_component_3, /** @src 64:7856:7866  "msg.sender" */ caller()), /** @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _14), _14, /** @src -1:-1:-1 */ 0)
                /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(_15) { revert_forward() }
                if _15
                {
                    finalize_allocation(_14, /** @src -1:-1:-1 */ 0)
                    /// @src 64:8954:9031  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                    abi_decode(_14, _14)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPos := mload(/** @src 64:8092:8103  "params.salt" */ 64)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(memPos, sub(abi_encode_userDefinedValueType_BalanceDelta_struct_MintArrays(memPos, expr_component_3, expr_component_mpos), memPos))
            }
            function external_fun_protocolFeeController()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let value := and(sload(/** @src 36:877:928  "IProtocolFeeController public protocolFeeController" */ 3), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let memPos := mload(64)
                mstore(memPos, value)
                return(memPos, 32)
            }
            function external_fun_transferOwnership()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 32)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := calldataload(4)
                validator_revert_contract_IProtocolFeeController(value)
                /// @src 39:1088:1150  "modifier onlyOwner() {..."
                fun_checkOwner()
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 39:1738:1760  "newOwner == address(0)" */ value, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 39:1734:1795  "if (newOwner == address(0)) {..."
                if /** @src 39:1738:1760  "newOwner == address(0)" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                /// @src 39:1734:1795  "if (newOwner == address(0)) {..."
                {
                    /// @src 39:1776:1784  "revert()"
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src -1:-1:-1 */ 0)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                sstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ or(and(_2, 0xffffffffffffffffffffffff0000000000000000000000000000000000000000), _1))
                /// @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)"
                log3(/** @src -1:-1:-1 */ 0, 0, /** @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)" */ 0x8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(_2, 0xffffffffffffffffffffffffffffffffffffffff), /** @src 39:2133:2173  "OwnershipTransferred(oldOwner, newOwner)" */ _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                return(/** @src -1:-1:-1 */ 0, 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function external_fun_vault()
            {
                if callvalue() { revert(0, 0) }
                if slt(add(calldatasize(), 0xfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffc), 0) { revert(0, 0) }
                let memPos := mload(64)
                mstore(memPos, and(/** @src 36:969:998  "IVault public immutable vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                return(memPos, 32)
            }
            function update_storage_value_offsett_contract_IProtocolFeeController_to_contract_IProtocolFeeController(slot, value)
            {
                sstore(slot, or(and(sload(slot), 0xffffffffffffffffffffffff0000000000000000000000000000000000000000), and(value, 0xffffffffffffffffffffffffffffffffffffffff)))
            }
            function extract_from_storage_value_offsett_uint16(slot_value) -> value
            {
                value := and(shr(160, slot_value), 0xffff)
            }
            function abi_encode_address_address(value0, value1) -> tail
            {
                tail := 68
                mstore(4, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(36, and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
            }
            /// @src 55:1449:1456  "100_000"
            function copy_struct_to_storage_from_struct_PoolKey_to_struct_PoolKey(slot, value)
            {
                update_storage_value_offsett_contract_IProtocolFeeController_to_contract_IProtocolFeeController(slot, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mload(/** @src 55:1449:1456  "100_000" */ value), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 55:1449:1456  "100_000"
                update_storage_value_offsett_contract_IProtocolFeeController_to_contract_IProtocolFeeController(add(slot, 1), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mload(/** @src 55:1449:1456  "100_000" */ add(value, 32)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 55:1449:1456  "100_000"
                update_storage_value_offsett_contract_IProtocolFeeController_to_contract_IProtocolFeeController(add(slot, 2), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 55:1449:1456  "100_000" */ mload(add(value, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 55:1449:1456  "100_000"
                let memberSlot := add(slot, 3)
                update_storage_value_offsett_contract_IProtocolFeeController_to_contract_IProtocolFeeController(memberSlot, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mload(/** @src 55:1449:1456  "100_000" */ add(value, 96)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 71:648:650  "32"
                let _1 := mload(/** @src 55:1449:1456  "100_000" */ add(value, 128))
                let _2 := sload(memberSlot)
                sstore(memberSlot, or(and(_2, 0xffffffffffffffffff000000ffffffffffffffffffffffffffffffffffffffff), and(shl(160, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1), /** @src 55:1449:1456  "100_000" */ 0xffffff0000000000000000000000000000000000000000)))
                sstore(add(slot, 4), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 55:1449:1456  "100_000" */ add(value, 160)))
            }
            function abi_encode_contract_IHooks_uint24_bytes32_uint24(headStart, value0, value1, value2, value3) -> tail
            {
                tail := add(headStart, 128)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(/** @src 55:1449:1456  "100_000" */ add(headStart, 32), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value1, 0xffffff))
                mstore(/** @src 55:1449:1456  "100_000" */ add(headStart, 64), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value2)
                mstore(/** @src 55:1449:1456  "100_000" */ add(headStart, 96), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value3, 0xffffff))
            }
            function write_to_memory_userDefinedValueType_Currency(memPtr, value)
            {
                mstore(memPtr, and(value, 0xffffffffffffffffffffffffffffffffffffffff))
            }
            function mapping_index_access_mapping_uint256_uint256_of_uint24(slot, key) -> dataSlot
            {
                mstore(0, and(key, 0xffffff))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }
            function abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(headStart, value0, value1, value2, value3) -> tail
            {
                tail := add(headStart, 128)
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 32), and(value1, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 64), value2)
                mstore(add(headStart, 96), and(value3, 0xffffffffffffffffffffffffffffffffffffffff))
            }
            function revert_forward()
            {
                let pos := mload(64)
                returndatacopy(pos, 0, returndatasize())
                revert(pos, returndatasize())
            }
            function abi_encode_int128_int128_uint24(headStart, value0, value1, value2) -> tail
            {
                tail := add(headStart, 96)
                mstore(headStart, signextend(15, value0))
                mstore(add(headStart, 32), signextend(15, value1))
                mstore(add(headStart, 64), and(value2, 0xffffff))
            }
            function panic_error_0x11()
            {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }
            function checked_sub_uint256(x, y) -> diff
            {
                diff := sub(x, y)
                if gt(diff, x) { panic_error_0x11() }
            }
            function abi_encode_userDefinedValueType_Currency_uint256_address(headStart, value0, value1, value2) -> tail
            {
                tail := add(headStart, 96)
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(add(headStart, 32), value1)
                mstore(add(headStart, 64), and(value2, 0xffffffffffffffffffffffffffffffffffffffff))
            }
            function allocate_and_zero_memory_struct_struct_SwapState() -> memPtr
            {
                let memPtr_1 := mload(64)
                let newFreePtr := add(memPtr_1, 128)
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr_1)) { panic_error_0x41() }
                mstore(64, newFreePtr)
                memPtr := memPtr_1
                mstore(memPtr_1, /** @src -1:-1:-1 */ 0)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(add(memPtr_1, 32), /** @src -1:-1:-1 */ 0)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(add(memPtr_1, 64), /** @src -1:-1:-1 */ 0)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(add(memPtr_1, 96), /** @src -1:-1:-1 */ 0)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function write_to_memory_bool(memPtr, value)
            {
                mstore(memPtr, iszero(iszero(value)))
            }
            function write_to_memory_uint16(memPtr, value)
            {
                mstore(memPtr, and(value, 0xffff))
            }
            function write_to_memory_int128(memPtr, value)
            {
                mstore(memPtr, signextend(15, value))
            }
            function convert_uint128_to_uint256(value) -> converted
            {
                converted := and(value, 0xffffffffffffffffffffffffffffffff)
            }
            function abi_encode_int128_int128_uint24_uint24_uint16(headStart, value0, value1, value2, value3, value4) -> tail
            {
                tail := add(headStart, 160)
                mstore(headStart, signextend(15, value0))
                mstore(add(headStart, 32), signextend(15, value1))
                mstore(add(headStart, 64), and(value2, 0xffffff))
                mstore(add(headStart, 96), and(value3, 0xffffff))
                mstore(add(headStart, 128), and(value4, 0xffff))
            }
            function abi_encode_array_uint256_dyn_bytes32_array_bytes32_dyn(headStart, value0, value1, value2) -> tail
            {
                mstore(headStart, 96)
                let tail_1 := abi_encode_array_bytes32_dyn(value0, add(headStart, 96))
                mstore(add(headStart, 32), value1)
                mstore(add(headStart, 64), sub(tail_1, headStart))
                tail := abi_encode_array_bytes32_dyn(value2, tail_1)
            }
            /// @ast-id 52593 @src 64:9080:10341  "function burn(PoolKey memory key, IBinPoolManager.BurnParams memory params, bytes calldata hookData)..."
            function fun_burn(var_key_52460_mpos, var_params_52463_mpos, var_hookData_52465_offset, var_hookData_52465_length) -> var_delta
            {
                /// @src 64:9278:9288  "key.toId()"
                let expr := /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ keccak256(/** @src 64:9278:9288  "key.toId()" */ var_key_52460_mpos, /** @src 111:286:459  "assembly (\"memory-safe\") {..." */ 0xc0)
                /// @src 64:9327:9336  "pools[id]"
                let _1 := mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId_21927(expr)
                /// @src 64:9346:9371  "pool.checkPoolInitialized"
                fun_checkPoolInitialized(_1)
                /// @src 64:9417:9425  "hookData"
                fun_beforeBurn(var_key_52460_mpos, var_params_52463_mpos, var_hookData_52465_offset, var_hookData_52465_length)
                /// @src 64:9642:9652  "params.ids"
                let _372_mpos := mload(var_params_52463_mpos)
                /// @src 64:9685:9705  "params.amountsToBurn"
                let _375_mpos := mload(add(var_params_52463_mpos, 32))
                /// @src 64:9729:9740  "params.salt"
                let _2 := add(var_params_52463_mpos, 64)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := mload(/** @src 64:9729:9740  "params.salt" */ _2)
                /// @src 64:9566:9755  "BinPool.BurnParams({..."
                let expr_52529_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ allocate_memory()
                /// @src 64:9566:9755  "BinPool.BurnParams({..."
                write_to_memory_userDefinedValueType_Currency(expr_52529_mpos, /** @src 64:9609:9619  "msg.sender" */ caller())
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 64:9566:9755  "BinPool.BurnParams({..." */ add(expr_52529_mpos, /** @src 64:9685:9705  "params.amountsToBurn" */ 32), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _372_mpos)
                mstore(/** @src 64:9566:9755  "BinPool.BurnParams({..." */ add(expr_52529_mpos, /** @src 64:9729:9740  "params.salt" */ 64), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _375_mpos)
                mstore(/** @src 64:9566:9755  "BinPool.BurnParams({..." */ add(expr_52529_mpos, 96), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _3)
                /// @src 64:9543:9765  "pool.burn(..."
                let expr_52530_component, expr_52530_component_2_mpos, expr_component_mpos := fun_burn_56339(_1, expr_52529_mpos)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _4 := mload(/** @src 64:9935:9946  "params.salt" */ _2)
                /// @src 64:9906:9962  "Burn(id, msg.sender, binIds, params.salt, amountRemoved)"
                let _5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:9729:9740  "params.salt" */ 64)
                /// @src 64:9906:9962  "Burn(id, msg.sender, binIds, params.salt, amountRemoved)"
                log3(_5, sub(abi_encode_array_uint256_dyn_bytes32_array_bytes32_dyn(_5, expr_52530_component_2_mpos, _4, expr_component_mpos), _5), 0x16d40aa4e497175b58e47cbf101544758de8c01d92a760c738943044c758df8a, expr, /** @src 64:9609:9619  "msg.sender" */ caller())
                /// @src 64:10026:10074  "BinHooks.afterBurn(key, params, delta, hookData)"
                let expr_52556_component, expr_52556_component_1 := fun_afterBurn(var_key_52460_mpos, var_params_52463_mpos, expr_52530_component, var_hookData_52465_offset, var_hookData_52465_length)
                /// @src 64:10005:10074  "(delta, hookDelta) = BinHooks.afterBurn(key, params, delta, hookData)"
                var_delta := expr_52556_component
                /// @src 64:10085:10248  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                if /** @src 64:10089:10132  "hookDelta != BalanceDeltaLibrary.ZERO_DELTA" */ cleanup_bool(expr_52556_component_1)
                /// @src 64:10085:10248  "if (hookDelta != BalanceDeltaLibrary.ZERO_DELTA) {..."
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _6 := and(/** @src 64:10148:10153  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                    /// @src 64:10177:10190  "key.currency0"
                    let _7 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:10177:10190  "key.currency0" */ var_key_52460_mpos))
                    /// @src 64:10192:10205  "key.currency1"
                    let _8 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:10192:10205  "key.currency1" */ add(var_key_52460_mpos, /** @src 64:9685:9705  "params.amountsToBurn" */ 32)))
                    /// @src 64:10218:10236  "address(key.hooks)"
                    let expr_1 := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:10226:10235  "key.hooks" */ add(var_key_52460_mpos, /** @src 64:9729:9740  "params.salt" */ 64))))
                    /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(extcodesize(_6))
                    {
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        revert(/** @src -1:-1:-1 */ 0, 0)
                    }
                    /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _9 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:9729:9740  "params.salt" */ 64)
                    /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    mstore(_9, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                    /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    let _10 := call(gas(), _6, /** @src -1:-1:-1 */ 0, /** @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))" */ _9, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_9, 4), _7, _8, expr_52556_component_1, expr_1), _9), _9, /** @src -1:-1:-1 */ 0)
                    /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                    if iszero(_10) { revert_forward() }
                    if _10
                    {
                        finalize_allocation(_9, /** @src -1:-1:-1 */ 0)
                        /// @src 64:10148:10237  "vault.accountAppBalanceDelta(key.currency0, key.currency1, hookDelta, address(key.hooks))"
                        abi_decode(_9, _9)
                    }
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _11 := and(/** @src 64:10257:10262  "vault" */ loadimmutable("48490"), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 64:10286:10299  "key.currency0"
                let _12 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:10286:10299  "key.currency0" */ var_key_52460_mpos))
                /// @src 64:10301:10314  "key.currency1"
                let _13 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 64:10301:10314  "key.currency1" */ add(var_key_52460_mpos, /** @src 64:9685:9705  "params.amountsToBurn" */ 32)))
                /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(extcodesize(_11))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _14 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 64:9729:9740  "params.salt" */ 64)
                /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                mstore(_14, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x9073e5ca00000000000000000000000000000000000000000000000000000000)
                /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                let _15 := call(gas(), _11, /** @src -1:-1:-1 */ 0, /** @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _14, sub(abi_encode_userDefinedValueType_Currency_userDefinedValueType_Currency_userDefinedValueType_BalanceDelta_address(add(_14, 4), _12, _13, expr_52556_component, /** @src 64:9609:9619  "msg.sender" */ caller()), /** @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)" */ _14), _14, /** @src -1:-1:-1 */ 0)
                /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                if iszero(_15) { revert_forward() }
                if _15
                {
                    finalize_allocation(_14, /** @src -1:-1:-1 */ 0)
                    /// @src 64:10257:10334  "vault.accountAppBalanceDelta(key.currency0, key.currency1, delta, msg.sender)"
                    abi_decode(_14, _14)
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function allocate_and_zero_memory_struct_struct_MintArrays() -> memPtr
            {
                let memPtr_1 := mload(64)
                finalize_allocation_21959(memPtr_1)
                memPtr := memPtr_1
                mstore(memPtr_1, 96)
                mstore(add(memPtr_1, 32), 96)
                mstore(add(memPtr_1, 64), 96)
            }
            function access_calldata_tail_array_bytes32_dyn_calldata(base_ref, ptr_to_tail) -> addr, length
            {
                let rel_offset_of_tail := calldataload(ptr_to_tail)
                if iszero(slt(rel_offset_of_tail, add(sub(calldatasize(), base_ref), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1))) { revert(0, 0) }
                let addr_1 := add(base_ref, rel_offset_of_tail)
                length := calldataload(addr_1)
                if gt(length, 0xffffffffffffffff) { revert(0, 0) }
                addr := add(addr_1, 0x20)
                if sgt(addr, sub(calldatasize(), shl(5, length))) { revert(0, 0) }
            }
            function abi_decode_available_length_array_bytes32_dyn(offset, length, end) -> array
            {
                let _1 := array_allocation_size_array_uint256_dyn(length)
                let memPtr := mload(64)
                finalize_allocation(memPtr, _1)
                array := memPtr
                let dst := memPtr
                mstore(memPtr, length)
                dst := add(memPtr, 0x20)
                let srcEnd := add(offset, shl(5, length))
                if gt(srcEnd, end)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let src := offset
                for { } lt(src, srcEnd) { src := add(src, 0x20) }
                {
                    let value := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    value := calldataload(src)
                    mstore(dst, value)
                    dst := add(dst, 0x20)
                }
            }
            function abi_encode_array_uint256_dyn_bytes32_array_bytes32_dyn_bytes32_bytes32(headStart, value0, value1, value2, value3, value4) -> tail
            {
                mstore(headStart, 160)
                let tail_1 := abi_encode_array_bytes32_dyn(value0, add(headStart, 160))
                mstore(add(headStart, 32), value1)
                mstore(add(headStart, 64), sub(tail_1, headStart))
                tail := abi_encode_array_bytes32_dyn(value2, tail_1)
                mstore(add(headStart, 96), value3)
                mstore(add(headStart, 128), value4)
            }
            function abi_decode_struct_MintParams(headStart, end) -> value
            {
                if slt(sub(end, headStart), 0x60) { revert(0, 0) }
                let memPtr := mload(64)
                finalize_allocation_21959(memPtr)
                value := memPtr
                let offset := calldataload(headStart)
                if gt(offset, 0xffffffffffffffff)
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := add(headStart, offset)
                if iszero(slt(add(_1, 0x1f), end))
                {
                    revert(/** @src -1:-1:-1 */ 0, 0)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(memPtr, abi_decode_available_length_array_bytes32_dyn(add(_1, 0x20), calldataload(_1), end))
                let value_1 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_1 := calldataload(add(headStart, 0x20))
                mstore(add(memPtr, 0x20), value_1)
                let value_2 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_2 := calldataload(add(headStart, 64))
                mstore(add(memPtr, 64), value_2)
            }
            /// @ast-id 49800 @src 39:1384:1505  "function _checkOwner() internal view virtual {..."
            function fun_checkOwner()
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(sload(/** @src 39:1298:1304  "_owner" */ 0x00), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 39:1439:1499  "if (owner() != msg.sender) {..."
                if /** @src 39:1443:1464  "owner() != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 39:1454:1464  "msg.sender" */ caller()))
                /// @src 39:1439:1499  "if (owner() != msg.sender) {..."
                {
                    /// @src 39:1480:1488  "revert()"
                    revert(/** @src 39:1298:1304  "_owner" */ 0x00, 0x00)
                }
            }
            /// @ast-id 56948 @src 71:927:1065  "function getBinStep(bytes32 params) internal pure returns (uint16 binStep) {..."
            function fun_getBinStep(var_params) -> var_binStep
            {
                /// @src 71:1012:1058  "binStep = params.decodeUint16(OFFSET_BIN_STEP)"
                var_binStep := /** @src 61:2910:3006  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 71:576:578  "16" */ 0x10, /** @src 71:1022:1058  "params.decodeUint16(OFFSET_BIN_STEP)" */ var_params), /** @src 61:2910:3006  "assembly (\"memory-safe\") {..." */ 65535)
            }
            /// @ast-id 68135 @src 110:779:931  "function greaterThanOrEqualTo(Currency currency, Currency other) pure returns (bool) {..."
            function fun_greaterThanOrEqualTo(var_currency, var_other) -> var
            {
                /// @src 110:870:928  "return Currency.unwrap(currency) >= Currency.unwrap(other)"
                var := /** @src 110:877:928  "Currency.unwrap(currency) >= Currency.unwrap(other)" */ iszero(lt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 110:877:902  "Currency.unwrap(currency)" */ var_currency, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), and(/** @src 110:906:928  "Currency.unwrap(other)" */ var_other, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)))
            }
            /// @ast-id 51643 @src 62:714:947  "function checkUnusedBitsAllZero(bytes32 params, uint256 mostSignificantUnUsedBitOffset) internal pure {..."
            function fun_checkUnusedBitsAllZero(var_params)
            {
                /// @src 62:826:941  "if ((uint256(params) >> (mostSignificantUnUsedBitOffset)) != 0) {..."
                if /** @src 62:830:888  "(uint256(params) >> (mostSignificantUnUsedBitOffset)) != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shr(/** @src 64:4047:4060  "key.currency1" */ 32, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_params)))
                /// @src 62:826:941  "if ((uint256(params) >> (mostSignificantUnUsedBitOffset)) != 0) {..."
                {
                    /// @src 62:911:930  "UnusedBitsNonZero()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 62:911:930  "UnusedBitsNonZero()" */ 0xbd2c84eb00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 62:911:930  "UnusedBitsNonZero()" */ 4)
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function abi_decode_uint16_fromMemory(headStart, dataEnd) -> value0
            {
                if slt(sub(dataEnd, headStart), 32) { revert(0, 0) }
                let value := mload(headStart)
                validator_revert_uint16(value)
                value0 := value
            }
            /// @ast-id 50787 @src 54:1815:2491  "function validateHookConfig(PoolKey memory poolKey) internal view {..."
            function fun_validateHookConfig(var_poolKey_mpos)
            {
                /// @src 54:1919:1966  "poolKey.parameters.getHooksRegistrationBitmap()"
                let expr := cleanup_from_storage_uint16(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 54:1919:1937  "poolKey.parameters" */ add(var_poolKey_mpos, 160)))
                /// @src 54:1988:2001  "poolKey.hooks"
                let _1 := add(var_poolKey_mpos, 64)
                /// @src 54:1976:2346  "if (address(poolKey.hooks) == address(0)) {..."
                if /** @src 54:1980:2016  "address(poolKey.hooks) == address(0)" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:1980:2002  "address(poolKey.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 54:1988:2001  "poolKey.hooks" */ _1))), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 54:1976:2346  "if (address(poolKey.hooks) == address(0)) {..."
                {
                    /// @src 54:2191:2247  "bitmapInParameters == 0 && !poolKey.fee.isDynamicLPFee()"
                    let expr_1 := /** @src 54:2191:2214  "bitmapInParameters == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:2191:2214  "bitmapInParameters == 0" */ expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff))
                    /// @src 54:2191:2247  "bitmapInParameters == 0 && !poolKey.fee.isDynamicLPFee()"
                    if expr_1
                    {
                        expr_1 := /** @src 54:2218:2247  "!poolKey.fee.isDynamicLPFee()" */ cleanup_bool(iszero(/** @src 54:2219:2247  "poolKey.fee.isDynamicLPFee()" */ fun_isDynamicLPFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 54:2219:2230  "poolKey.fee" */ add(var_poolKey_mpos, 128))))))
                    }
                    /// @src 54:2187:2288  "if (bitmapInParameters == 0 && !poolKey.fee.isDynamicLPFee()) {..."
                    if expr_1
                    {
                        /// @src 54:2267:2274  "return;"
                        leave
                    }
                    /// @src 54:2308:2335  "HookConfigValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 54:2308:2335  "HookConfigValidationError()" */ 0x7f7506dc00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 54:2308:2335  "HookConfigValidationError()" */ 4)
                }
                /// @src 54:2360:2400  "poolKey.hooks.getHooksRegistrationBitmap"
                let expr_50777_address := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 54:2360:2373  "poolKey.hooks" */ _1)))
                /// @src 54:2360:2402  "poolKey.hooks.getHooksRegistrationBitmap()"
                let _2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 54:1988:2001  "poolKey.hooks" */ 64)
                /// @src 54:2360:2402  "poolKey.hooks.getHooksRegistrationBitmap()"
                mstore(_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xf961d1f400000000000000000000000000000000000000000000000000000000)
                /// @src 54:2360:2402  "poolKey.hooks.getHooksRegistrationBitmap()"
                let _3 := staticcall(gas(), expr_50777_address, _2, 4, _2, 32)
                if iszero(_3) { revert_forward() }
                let expr_2 := /** @src -1:-1:-1 */ 0
                /// @src 54:2360:2402  "poolKey.hooks.getHooksRegistrationBitmap()"
                if _3
                {
                    let _4 := 32
                    if gt(32, returndatasize()) { _4 := returndatasize() }
                    finalize_allocation(_2, _4)
                    expr_2 := abi_decode_uint16_fromMemory(_2, add(_2, _4))
                }
                /// @src 54:2356:2485  "if (poolKey.hooks.getHooksRegistrationBitmap() != bitmapInParameters) {..."
                if /** @src 54:2360:2424  "poolKey.hooks.getHooksRegistrationBitmap() != bitmapInParameters" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:2360:2424  "poolKey.hooks.getHooksRegistrationBitmap() != bitmapInParameters" */ expr_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff), and(/** @src 54:2360:2424  "poolKey.hooks.getHooksRegistrationBitmap() != bitmapInParameters" */ expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)))
                /// @src 54:2356:2485  "if (poolKey.hooks.getHooksRegistrationBitmap() != bitmapInParameters) {..."
                {
                    /// @src 54:2447:2474  "HookConfigValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 54:2447:2474  "HookConfigValidationError()" */ 0x7f7506dc00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 54:2360:2402  "poolKey.hooks.getHooksRegistrationBitmap()" */ 4)
                }
            }
            /// @ast-id 54542 @src 69:1036:2135  "function validatePermissionsConflict(PoolKey memory key) internal pure {..."
            function fun_validatePermissionsConflict(var_key_54462_mpos)
            {
                /// @src 69:1134:1148  "key.parameters"
                let _1 := add(var_key_54462_mpos, 160)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := mload(/** @src 69:1134:1148  "key.parameters" */ _1)
                /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                let converted := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                converted := 10
                /// @src 69:1134:1283  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)..."
                let expr := /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1134:1205  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)" */ _2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 10)
                /// @src 69:1134:1283  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)..."
                if expr
                {
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted_1 := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted_1 := 6
                    /// @src 69:1134:1283  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)..."
                    expr := /** @src 69:1225:1283  "!key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_OFFSET)" */ cleanup_bool(iszero(/** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1226:1283  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_OFFSET)" */ _2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 6)))
                }
                /// @src 69:1117:1364  "if (..."
                if expr
                {
                    /// @src 69:1315:1353  "Hooks.HookPermissionsValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 69:1315:1353  "Hooks.HookPermissionsValidationError()" */ 0x1dd0958300000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 69:1315:1353  "Hooks.HookPermissionsValidationError()" */ 4)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := mload(/** @src 69:1391:1405  "key.parameters" */ _1)
                /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                let converted_2 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                converted_2 := 11
                /// @src 69:1391:1538  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_RETURNS_DELTA_OFFSET)..."
                let expr_1 := /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1391:1461  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_RETURNS_DELTA_OFFSET)" */ _3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 11)
                /// @src 69:1391:1538  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_RETURNS_DELTA_OFFSET)..."
                if expr_1
                {
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted_3 := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted_3 := 7
                    /// @src 69:1391:1538  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_RETURNS_DELTA_OFFSET)..."
                    expr_1 := /** @src 69:1481:1538  "!key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_OFFSET)" */ cleanup_bool(iszero(/** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1482:1538  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_OFFSET)" */ _3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 7)))
                }
                /// @src 69:1374:1619  "if (..."
                if expr_1
                {
                    /// @src 69:1570:1608  "Hooks.HookPermissionsValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 69:1570:1608  "Hooks.HookPermissionsValidationError()" */ 0x1dd0958300000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 69:1570:1608  "Hooks.HookPermissionsValidationError()" */ 4)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _4 := mload(/** @src 69:1646:1660  "key.parameters" */ _1)
                /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                let converted_4 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                converted_4 := 12
                /// @src 69:1646:1793  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_RETURNS_DELTA_OFFSET)..."
                let expr_2 := /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1646:1716  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_RETURNS_DELTA_OFFSET)" */ _4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 12)
                /// @src 69:1646:1793  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_RETURNS_DELTA_OFFSET)..."
                if expr_2
                {
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted_5 := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted_5 := 3
                    /// @src 69:1646:1793  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_RETURNS_DELTA_OFFSET)..."
                    expr_2 := /** @src 69:1736:1793  "!key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_OFFSET)" */ cleanup_bool(iszero(/** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1737:1793  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_OFFSET)" */ _4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 3)))
                }
                /// @src 69:1629:1874  "if (..."
                if expr_2
                {
                    /// @src 69:1825:1863  "Hooks.HookPermissionsValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 69:1825:1863  "Hooks.HookPermissionsValidationError()" */ 0x1dd0958300000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 69:1825:1863  "Hooks.HookPermissionsValidationError()" */ 4)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _5 := mload(/** @src 69:1901:1915  "key.parameters" */ _1)
                /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                let converted_6 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                converted_6 := 13
                /// @src 69:1901:2048  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_RETURNS_DELTA_OFFSET)..."
                let expr_3 := /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1901:1971  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_RETURNS_DELTA_OFFSET)" */ _5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 13)
                /// @src 69:1901:2048  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_RETURNS_DELTA_OFFSET)..."
                if expr_3
                {
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted_7 := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted_7 := 5
                    /// @src 69:1901:2048  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_RETURNS_DELTA_OFFSET)..."
                    expr_3 := /** @src 69:1991:2048  "!key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_OFFSET)" */ cleanup_bool(iszero(/** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:1992:2048  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_OFFSET)" */ _5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 5)))
                }
                /// @src 69:1884:2129  "if (..."
                if expr_3
                {
                    /// @src 69:2080:2118  "Hooks.HookPermissionsValidationError()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 69:2080:2118  "Hooks.HookPermissionsValidationError()" */ 0x1dd0958300000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 69:2080:2118  "Hooks.HookPermissionsValidationError()" */ 4)
                }
            }
            /// @ast-id 50996 @src 55:2436:2650  "function getInitialLPFee(uint24 self) internal pure returns (uint24 initialFee) {..."
            function fun_getInitialLPFee(var_self) -> var_initialFee
            {
                /// @src 55:2497:2514  "uint24 initialFee"
                var_initialFee := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 55:2581:2616  "if (self.isDynamicLPFee()) return 0"
                if /** @src 55:1719:1743  "self == DYNAMIC_FEE_FLAG" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(var_self, 0xffffff), /** @src 55:900:908  "0x800000" */ 0x800000)
                /// @src 55:2581:2616  "if (self.isDynamicLPFee()) return 0"
                {
                    /// @src 55:2608:2616  "return 0"
                    var_initialFee := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 55:2608:2616  "return 0"
                    leave
                }
                /// @src 55:2626:2643  "initialFee = self"
                var_initialFee := var_self
            }
            /// @ast-id 50977 @src 55:1950:2072  "function validate(uint24 self, uint24 maxFee) internal pure {..."
            function fun_validate_21926(var_self)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 55:2024:2037  "self > maxFee" */ var_self, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 55:2020:2065  "if (self > maxFee) revert LPFeeTooLarge(self)"
                if /** @src 55:2024:2037  "self > maxFee" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, 100000)
                /// @src 55:2020:2065  "if (self > maxFee) revert LPFeeTooLarge(self)"
                {
                    /// @src 55:2046:2065  "LPFeeTooLarge(self)"
                    mstore(0, 0x1400211300000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 55:2046:2065  "LPFeeTooLarge(self)" */ 4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                    /// @src 55:2046:2065  "LPFeeTooLarge(self)"
                    revert(0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 36)
                }
            }
            /// @src 66:385:386  "0"
            function abi_encode_struct_PoolKey(value, pos)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(pos, and(/** @src 66:385:386  "0" */ mload(value), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(/** @src 66:385:386  "0" */ add(pos, 0x20), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 66:385:386  "0" */ mload(add(value, 0x20)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(/** @src 66:385:386  "0" */ add(pos, 0x40), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 66:385:386  "0" */ mload(add(value, 0x40)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(/** @src 66:385:386  "0" */ add(pos, 0x60), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 66:385:386  "0" */ mload(add(value, 0x60)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                mstore(/** @src 66:385:386  "0" */ add(pos, 0x80), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 66:385:386  "0" */ mload(add(value, 0x80)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                mstore(/** @src 66:385:386  "0" */ add(pos, 0xa0), mload(add(value, 0xa0)))
            }
            function abi_encode_bytes_calldata(start, length, pos) -> end
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(pos, length)
                /// @src 66:385:386  "0"
                calldatacopy(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(pos, 0x20), /** @src 66:385:386  "0" */ start, length)
                mstore(add(add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ pos, /** @src 66:385:386  "0" */ length), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x20), /** @src -1:-1:-1 */ 0)
                /// @src 66:385:386  "0"
                end := add(add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ pos, and(add(length, 31), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)), 0x20)
            }
            /// @src 66:385:386  "0"
            function abi_encode_address_struct_PoolKey_uint24_bytes_calldata(headStart, value0, value1, value2, value3, value4) -> tail
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 66:385:386  "0"
                abi_encode_struct_PoolKey(value1, add(headStart, 32))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:385:386  "0" */ add(headStart, 224), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value2, 0xffffff))
                /// @src 66:385:386  "0"
                mstore(add(headStart, 256), 288)
                tail := abi_encode_bytes_calldata(value3, value4, add(headStart, 288))
            }
            /// @ast-id 54589 @src 69:2141:2511  "function beforeInitialize(PoolKey memory key, uint24 activeId, bytes calldata hookData) internal {..."
            function fun_beforeInitialize(var_key_54545_mpos, var_activeId, var_hookData_54549_offset, var_hookData_54549_length)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:2284:2293  "key.hooks" */ add(var_key_54545_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := mload(/** @src 69:2310:2324  "key.parameters" */ add(var_key_54545_mpos, 160))
                /// @src 69:2310:2374  "key.parameters.shouldCall(HOOKS_BEFORE_INITIALIZE_OFFSET, hooks)"
                let var := /** @src -1:-1:-1 */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(_1, 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:2306:2505  "if (key.parameters.shouldCall(HOOKS_BEFORE_INITIALIZE_OFFSET, hooks)) {..."
                if /** @src 69:2310:2374  "key.parameters.shouldCall(HOOKS_BEFORE_INITIALIZE_OFFSET, hooks)" */ expr
                /// @src 69:2306:2505  "if (key.parameters.shouldCall(HOOKS_BEFORE_INITIALIZE_OFFSET, hooks)) {..."
                {
                    /// @src 69:2412:2493  "abi.encodeCall(IBinHooks.beforeInitialize, (msg.sender, key, activeId, hookData))"
                    let expr_54583_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:2284:2293  "key.hooks" */ 64)
                    /// @src 69:2412:2493  "abi.encodeCall(IBinHooks.beforeInitialize, (msg.sender, key, activeId, hookData))"
                    mstore(add(expr_54583_mpos, 0x20), 0xae92a8e800000000000000000000000000000000000000000000000000000000)
                    let _2 := sub(abi_encode_address_struct_PoolKey_uint24_bytes_calldata(add(expr_54583_mpos, 36), /** @src 69:2456:2466  "msg.sender" */ caller(), /** @src 69:2412:2493  "abi.encodeCall(IBinHooks.beforeInitialize, (msg.sender, key, activeId, hookData))" */ var_key_54545_mpos, var_activeId, var_hookData_54549_offset, var_hookData_54549_length), expr_54583_mpos)
                    mstore(expr_54583_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_54583_mpos, _2)
                    /// @src 69:2390:2494  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.beforeInitialize, (msg.sender, key, activeId, hookData)))"
                    pop(fun_callHook(value, expr_54583_mpos))
                }
            }
            /// @src 36:1214:1217  "100"
            function abi_encode_struct_PoolKey_memory_ptr(headStart, value0) -> tail
            {
                tail := add(headStart, 192)
                abi_encode_struct_PoolKey(value0, headStart)
            }
            /// @ast-id 48645 @src 36:2178:3768  "function _fetchProtocolFee(PoolKey memory key) internal returns (uint24 protocolFee) {..."
            function fun_fetchProtocolFee(var_key_48563_mpos) -> var_protocolFee
            {
                /// @src 36:2243:2261  "uint24 protocolFee"
                var_protocolFee := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 36:2277:2307  "address(protocolFeeController)"
                let expr := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(sload(/** @src 36:2285:2306  "protocolFeeController" */ 0x03)))
                /// @src 36:2273:3762  "if (address(protocolFeeController) != address(0)) {..."
                if /** @src 36:2277:2321  "address(protocolFeeController) != address(0)" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 36:2277:2321  "address(protocolFeeController) != address(0)" */ expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)))
                /// @src 36:2273:3762  "if (address(protocolFeeController) != address(0)) {..."
                {
                    /// @src 36:2366:2414  "block.gaslimit.calculatePortion(BLOCK_LIMIT_BPS)"
                    let expr_1 := fun_calculatePortion(/** @src 36:2366:2380  "block.gaslimit" */ gaslimit())
                    /// @src 36:2655:2726  "if (gasleft() < controllerGasLimit) revert ProtocolFeeCannotBeFetched()"
                    if /** @src 36:2659:2689  "gasleft() < controllerGasLimit" */ lt(/** @src 36:2659:2668  "gasleft()" */ gas(), /** @src 36:2659:2689  "gasleft() < controllerGasLimit" */ expr_1)
                    /// @src 36:2655:2726  "if (gasleft() < controllerGasLimit) revert ProtocolFeeCannotBeFetched()"
                    {
                        /// @src 36:2698:2726  "ProtocolFeeCannotBeFetched()"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 36:2698:2726  "ProtocolFeeCannotBeFetched()" */ 0x1ee4970200000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 36:2698:2726  "ProtocolFeeCannotBeFetched()" */ 4)
                    }
                    /// @src 36:2843:2907  "abi.encodeCall(IProtocolFeeController.protocolFeeForPool, (key))"
                    let expr_48608_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(64)
                    /// @src 36:2843:2907  "abi.encodeCall(IProtocolFeeController.protocolFeeForPool, (key))"
                    let _1 := add(expr_48608_mpos, 0x20)
                    mstore(_1, 0x463561cc00000000000000000000000000000000000000000000000000000000)
                    let _2 := sub(abi_encode_struct_PoolKey_memory_ptr(add(expr_48608_mpos, 36), var_key_48563_mpos), expr_48608_mpos)
                    mstore(expr_48608_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_48608_mpos, _2)
                    /// @src 36:2980:3495  "assembly (\"memory-safe\") {..."
                    let var_success := call(expr_1, expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 36:2980:3495  "assembly (\"memory-safe\") {..." */ _1, mload(expr_48608_mpos), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 36:2843:2907  "abi.encodeCall(IProtocolFeeController.protocolFeeForPool, (key))" */ 0x20)
                    /// @src 36:2980:3495  "assembly (\"memory-safe\") {..."
                    let var_returnData := mload(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                    /// @src 36:3648:3693  "success && (returnData == uint24(returnData))"
                    let expr_2 := /** @src 36:2980:3495  "assembly (\"memory-safe\") {..." */ and(var_success, eq(returndatasize(), /** @src 36:2843:2907  "abi.encodeCall(IProtocolFeeController.protocolFeeForPool, (key))" */ 0x20))
                    /// @src 36:3648:3693  "success && (returnData == uint24(returnData))"
                    if expr_2
                    {
                        expr_2 := /** @src 36:3660:3692  "returnData == uint24(returnData)" */ eq(var_returnData, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 36:3674:3692  "uint24(returnData)" */ var_returnData, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                    }
                    /// @src 36:3648:3726  "success && (returnData == uint24(returnData)) && uint24(returnData).validate()"
                    let expr_3 := expr_2
                    if expr_2
                    {
                        expr_3 := /** @src 36:3697:3726  "uint24(returnData).validate()" */ fun_validate(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 36:3697:3715  "uint24(returnData)" */ var_returnData, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                    }
                    /// @src 36:3648:3751  "success && (returnData == uint24(returnData)) && uint24(returnData).validate() ? uint24(returnData) : 0"
                    let expr_4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 36:3648:3751  "success && (returnData == uint24(returnData)) && uint24(returnData).validate() ? uint24(returnData) : 0"
                    switch expr_3
                    case 0 {
                        expr_4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    }
                    default /// @src 36:3648:3751  "success && (returnData == uint24(returnData)) && uint24(returnData).validate() ? uint24(returnData) : 0"
                    {
                        expr_4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 36:3729:3747  "uint24(returnData)" */ var_returnData, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                    }
                    /// @src 36:3618:3751  "protocolFee =..."
                    var_protocolFee := expr_4
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function update_storage_value_offset_0t_uint24_to_uint24(slot, value)
            {
                sstore(slot, or(and(sload(slot), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff000000), and(value, 0xffffff)))
            }
            function update_storage_value_offsett_uint24_to_t_uint24(slot, value)
            {
                let _1 := sload(slot)
                sstore(slot, or(and(_1, 0xffffffffffffffffffffffffffffffffffffffffffffffffffff000000ffffff), and(shl(24, value), 0xffffff000000)))
            }
            function update_storage_value_offsett_uint24_to_uint24(slot, value)
            {
                let _1 := sload(slot)
                sstore(slot, or(and(_1, 0xffffffffffffffffffffffffffffffffffffffffffffff000000ffffffffffff), and(shl(48, value), 0xffffff000000000000)))
            }
            /// @ast-id 55466 @src 70:3422:3807  "function initialize(State storage self, uint24 activeId, uint24 protocolFee, uint24 lpFee) internal {..."
            function fun_initialize(var_self_55430_slot, var_activeId, var_protocolFee, var_lpFee)
            {
                /// @src 70:3590:3651  "if (self.slot0.activeId != 0) revert PoolAlreadyInitialized()"
                if /** @src 70:3594:3618  "self.slot0.activeId != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(sload(/** @src 70:3594:3613  "self.slot0.activeId" */ var_self_55430_slot), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)))
                /// @src 70:3590:3651  "if (self.slot0.activeId != 0) revert PoolAlreadyInitialized()"
                {
                    /// @src 70:3627:3651  "PoolAlreadyInitialized()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 70:3627:3651  "PoolAlreadyInitialized()" */ 0x7983c05100000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 70:3627:3651  "PoolAlreadyInitialized()" */ 4)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 70:3665:3678  "activeId == 0" */ var_activeId, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 70:3661:3709  "if (activeId == 0) revert PoolInvalidParameter()"
                if /** @src 70:3665:3678  "activeId == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                /// @src 70:3661:3709  "if (activeId == 0) revert PoolInvalidParameter()"
                {
                    /// @src 70:3687:3709  "PoolInvalidParameter()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 70:3687:3709  "PoolInvalidParameter()" */ 0x5e0ebec700000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 70:3687:3709  "PoolInvalidParameter()" */ 4)
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPtr := mload(64)
                finalize_allocation_21959(memPtr)
                mstore(memPtr, _1)
                let _2 := and(var_protocolFee, 0xffffff)
                mstore(/** @src 70:3733:3800  "Slot0({activeId: activeId, protocolFee: protocolFee, lpFee: lpFee})" */ add(memPtr, 32), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _2)
                let _3 := and(var_lpFee, 0xffffff)
                mstore(/** @src 70:3733:3800  "Slot0({activeId: activeId, protocolFee: protocolFee, lpFee: lpFee})" */ add(memPtr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64), _3)
                update_storage_value_offset_0t_uint24_to_uint24(var_self_55430_slot, /** @src 71:648:650  "32" */ _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                update_storage_value_offsett_uint24_to_t_uint24(var_self_55430_slot, /** @src 71:648:650  "32" */ _2)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                update_storage_value_offsett_uint24_to_uint24(var_self_55430_slot, /** @src 71:648:650  "32" */ _3)
            }
            /// @ast-id 54636 @src 69:2517:2884  "function afterInitialize(PoolKey memory key, uint24 activeId, bytes calldata hookData) internal {..."
            function fun_afterInitialize(var_key_54592_mpos, var_activeId, var_hookData_54596_offset, var_hookData_54596_length)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:2659:2668  "key.hooks" */ add(var_key_54592_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := mload(/** @src 69:2685:2699  "key.parameters" */ add(var_key_54592_mpos, 160))
                /// @src 69:2685:2748  "key.parameters.shouldCall(HOOKS_AFTER_INITIALIZE_OFFSET, hooks)"
                let var := /** @src -1:-1:-1 */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 1, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ _1), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:2681:2878  "if (key.parameters.shouldCall(HOOKS_AFTER_INITIALIZE_OFFSET, hooks)) {..."
                if /** @src 69:2685:2748  "key.parameters.shouldCall(HOOKS_AFTER_INITIALIZE_OFFSET, hooks)" */ expr
                /// @src 69:2681:2878  "if (key.parameters.shouldCall(HOOKS_AFTER_INITIALIZE_OFFSET, hooks)) {..."
                {
                    /// @src 69:2786:2866  "abi.encodeCall(IBinHooks.afterInitialize, (msg.sender, key, activeId, hookData))"
                    let expr_54630_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:2659:2668  "key.hooks" */ 64)
                    /// @src 69:2786:2866  "abi.encodeCall(IBinHooks.afterInitialize, (msg.sender, key, activeId, hookData))"
                    mstore(add(expr_54630_mpos, 0x20), 0x6514d01f00000000000000000000000000000000000000000000000000000000)
                    let _2 := sub(abi_encode_address_struct_PoolKey_uint24_bytes_calldata(add(expr_54630_mpos, 36), /** @src 69:2829:2839  "msg.sender" */ caller(), /** @src 69:2786:2866  "abi.encodeCall(IBinHooks.afterInitialize, (msg.sender, key, activeId, hookData))" */ var_key_54592_mpos, var_activeId, var_hookData_54596_offset, var_hookData_54596_length), expr_54630_mpos)
                    mstore(expr_54630_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_54630_mpos, _2)
                    /// @src 69:2764:2867  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.afterInitialize, (msg.sender, key, activeId, hookData)))"
                    pop(fun_callHook(value, expr_54630_mpos))
                }
            }
            /// @ast-id 56105 @src 70:11668:12101  "function getBin(State storage self, uint16 binStep, uint24 id)..."
            function fun_getBin(var_self_56057_slot, var_binStep, var_id) -> var_binReserveX, var_binReserveY, var_binLiquidity, var_binShare
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := sload(/** @src 70:11896:11917  "self.reserveOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:11896:11913  "self.reserveOfBin" */ add(var_self_56057_slot, 1), /** @src 70:11896:11917  "self.reserveOfBin[id]" */ var_id))
                /// @src 70:11928:11977  "(binReserveX, binReserveY) = binReserves.decode()"
                var_binReserveY := /** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ shr(128, _1)
                /// @src 70:11928:11977  "(binReserveX, binReserveY) = binReserves.decode()"
                var_binReserveX := /** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ and(_1, 340282366920938463463374607431768211455)
                /// @src 70:12002:12054  "binReserves.getLiquidity(id.getPriceFromId(binStep))"
                let var_price := /** @src 70:12027:12053  "id.getPriceFromId(binStep)" */ fun_getPriceFromId(var_id, var_binStep)
                /// @src 70:12002:12054  "binReserves.getLiquidity(id.getPriceFromId(binStep))"
                let var_liquidity := /** @src -1:-1:-1 */ 0
                /// @src 68:4730:4762  "return getLiquidity(x, y, price)"
                var_liquidity := /** @src 68:4737:4762  "getLiquidity(x, y, price)" */ fun_getLiquidity(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ var_binReserveX, var_binReserveY, /** @src 68:4737:4762  "getLiquidity(x, y, price)" */ var_price)
                /// @src 70:11987:12054  "binLiquidity = binReserves.getLiquidity(id.getPriceFromId(binStep))"
                var_binLiquidity := var_liquidity
                /// @src 70:12064:12094  "binShare = self.shareOfBin[id]"
                var_binShare := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 70:12075:12094  "self.shareOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:12075:12090  "self.shareOfBin" */ add(var_self_56057_slot, 2), /** @src 70:12075:12094  "self.shareOfBin[id]" */ var_id))
            }
            /// @ast-id 49894 @src 40:1557:1685  "function _requireNotPaused() internal view virtual {..."
            function fun_requireNotPaused()
            {
                /// @src 40:1618:1679  "if (paused()) {..."
                if /** @src 40:1470:1482  "_paused == 1" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 40:1470:1477  "_paused" */ 0x01), 0x01)
                /// @src 40:1618:1679  "if (paused()) {..."
                {
                    /// @src 40:1653:1668  "EnforcedPause()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 40:1653:1668  "EnforcedPause()" */ 0xd93c066500000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 40:1653:1668  "EnforcedPause()" */ 4)
                }
            }
            /// @ast-id 56917 @src 70:20707:21001  "function checkPoolInitialized(State storage self) internal view {..."
            function fun_checkPoolInitialized(var_self_56905_slot)
            {
                /// @src 70:20781:20995  "if (self.slot0.activeId == 0) {..."
                if /** @src 70:20785:20809  "self.slot0.activeId == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(sload(/** @src 70:20785:20804  "self.slot0.activeId" */ var_self_56905_slot), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                /// @src 70:20781:20995  "if (self.slot0.activeId == 0) {..."
                {
                    /// @src 70:20869:20985  "assembly (\"memory-safe\") {..."
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 70:20869:20985  "assembly (\"memory-safe\") {..." */ 0x486aa307)
                    revert(0x1c, 0x04)
                }
            }
            /// @src 66:749:750  "8"
            function abi_encode_address_struct_PoolKey_uint128_uint128_bytes_calldata(headStart, value0, value1, value2, value3, value4, value5) -> tail
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 66:749:750  "8"
                abi_encode_struct_PoolKey(value1, add(headStart, 32))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:749:750  "8" */ add(headStart, 224), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value2, 0xffffffffffffffffffffffffffffffff))
                mstore(/** @src 66:749:750  "8" */ add(headStart, 256), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(value3, 0xffffffffffffffffffffffffffffffff))
                /// @src 66:749:750  "8"
                mstore(add(headStart, 288), 320)
                tail := abi_encode_bytes_calldata(value4, value5, add(headStart, 320))
            }
            /// @ast-id 55225 @src 69:8816:9198  "function beforeDonate(PoolKey memory key, uint128 amount0, uint128 amount1, bytes calldata hookData) internal {..."
            function fun_beforeDonate(var_key_55178_mpos, var_amount0, var_amount1, var_hookData_55184_offset, var_hookData_55184_length)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:8972:8981  "key.hooks" */ add(var_key_55178_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := mload(/** @src 69:8997:9011  "key.parameters" */ add(var_key_55178_mpos, 160))
                /// @src 69:8997:9057  "key.parameters.shouldCall(HOOKS_BEFORE_DONATE_OFFSET, hooks)"
                let var := /** @src -1:-1:-1 */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 8, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ _1), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:8993:9192  "if (key.parameters.shouldCall(HOOKS_BEFORE_DONATE_OFFSET, hooks)) {..."
                if /** @src 69:8997:9057  "key.parameters.shouldCall(HOOKS_BEFORE_DONATE_OFFSET, hooks)" */ expr
                /// @src 69:8993:9192  "if (key.parameters.shouldCall(HOOKS_BEFORE_DONATE_OFFSET, hooks)) {..."
                {
                    /// @src 69:9095:9180  "abi.encodeCall(IBinHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData))"
                    let expr_55219_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:8972:8981  "key.hooks" */ 64)
                    /// @src 69:9095:9180  "abi.encodeCall(IBinHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData))"
                    mstore(add(expr_55219_mpos, 0x20), 0x4b6a682d00000000000000000000000000000000000000000000000000000000)
                    let _2 := sub(abi_encode_address_struct_PoolKey_uint128_uint128_bytes_calldata(add(expr_55219_mpos, 36), /** @src 69:9135:9145  "msg.sender" */ caller(), /** @src 69:9095:9180  "abi.encodeCall(IBinHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData))" */ var_key_55178_mpos, var_amount0, var_amount1, var_hookData_55184_offset, var_hookData_55184_length), expr_55219_mpos)
                    mstore(expr_55219_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_55219_mpos, _2)
                    /// @src 69:9073:9181  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.beforeDonate, (msg.sender, key, amount0, amount1, hookData)))"
                    pop(fun_callHook(value, expr_55219_mpos))
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function negate_int128(value) -> ret
            {
                let value_1 := signextend(15, value)
                if eq(value_1, 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000) { panic_error_0x11() }
                ret := sub(0, value_1)
            }
            /// @ast-id 56427 @src 70:14323:15059  "function donate(State storage self, uint16 binStep, uint128 amount0, uint128 amount1)..."
            function fun_donate(var_self_56342_slot, var_binStep, var_amount0, var_amount1) -> var_result, var_activeId
            {
                /// @src 70:14495:14525  "activeId = self.slot0.activeId"
                var_activeId := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(sload(/** @src 70:14506:14525  "self.slot0.activeId" */ var_self_56342_slot), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 78:1105:1197  "assembly (\"memory-safe\") {..."
                let var_z := or(and(var_amount0, 340282366920938463463374607431768211455), shl(128, var_amount1))
                /// @src 70:14610:14627  "self.reserveOfBin"
                let _1 := add(var_self_56342_slot, 1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src 70:14610:14637  "self.reserveOfBin[activeId]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_1, var_activeId))
                /// @src 70:14647:14711  "if (binReserves == 0) revert BinPool__NoLiquidityToReceiveFees()"
                if /** @src 70:14651:14667  "binReserves == 0" */ iszero(_2)
                /// @src 70:14647:14711  "if (binReserves == 0) revert BinPool__NoLiquidityToReceiveFees()"
                {
                    /// @src 70:14676:14711  "BinPool__NoLiquidityToReceiveFees()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 70:14676:14711  "BinPool__NoLiquidityToReceiveFees()" */ 0xb799a4f000000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 70:14676:14711  "BinPool__NoLiquidityToReceiveFees()" */ 4)
                }
                /// @src 70:14858:14903  "binReserves.add(amountIn).getLiquidity(price)"
                pop(fun_getLiquidity_53867(/** @src 70:14858:14883  "binReserves.add(amountIn)" */ fun_add_57825(_2, var_z), /** @src 70:14816:14848  "activeId.getPriceFromId(binStep)" */ fun_getPriceFromId(var_activeId, var_binStep)))
                /// @src 55:1449:1456  "100_000"
                sstore(/** @src 70:14914:14941  "self.reserveOfBin[activeId]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_1, var_activeId), /** @src 70:14944:14969  "binReserves.add(amountIn)" */ fun_add_57825(_2, var_z))
                /// @src 70:15003:15026  "-(amount0.safeInt128())"
                let expr := negate_int128(/** @src 70:15005:15025  "amount0.safeInt128()" */ fun_safeInt128(var_amount0))
                /// @src 70:14979:15052  "result = toBalanceDelta(-(amount0.safeInt128()), -(amount1.safeInt128()))"
                var_result := /** @src 108:553:668  "assembly (\"memory-safe\") {..." */ or(shl(/** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ 128, /** @src 108:553:668  "assembly (\"memory-safe\") {..." */ expr), and(/** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455, /** @src 70:15028:15051  "-(amount1.safeInt128())" */ negate_int128(/** @src 70:15030:15050  "amount1.safeInt128()" */ fun_safeInt128(var_amount1))))
            }
            /// @ast-id 55275 @src 69:9204:9583  "function afterDonate(PoolKey memory key, uint128 amount0, uint128 amount1, bytes calldata hookData) internal {..."
            function fun_afterDonate(var_key_55228_mpos, var_amount0, var_amount1, var_hookData_55234_offset, var_hookData_55234_length)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:9359:9368  "key.hooks" */ add(var_key_55228_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := mload(/** @src 69:9384:9398  "key.parameters" */ add(var_key_55228_mpos, 160))
                /// @src 69:9384:9443  "key.parameters.shouldCall(HOOKS_AFTER_DONATE_OFFSET, hooks)"
                let var := /** @src -1:-1:-1 */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 9, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ _1), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:9380:9577  "if (key.parameters.shouldCall(HOOKS_AFTER_DONATE_OFFSET, hooks)) {..."
                if /** @src 69:9384:9443  "key.parameters.shouldCall(HOOKS_AFTER_DONATE_OFFSET, hooks)" */ expr
                /// @src 69:9380:9577  "if (key.parameters.shouldCall(HOOKS_AFTER_DONATE_OFFSET, hooks)) {..."
                {
                    /// @src 69:9481:9565  "abi.encodeCall(IBinHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData))"
                    let expr_55269_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:9359:9368  "key.hooks" */ 64)
                    /// @src 69:9481:9565  "abi.encodeCall(IBinHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData))"
                    mstore(add(expr_55269_mpos, 0x20), 0x5304d44e00000000000000000000000000000000000000000000000000000000)
                    let _2 := sub(abi_encode_address_struct_PoolKey_uint128_uint128_bytes_calldata(add(expr_55269_mpos, 36), /** @src 69:9520:9530  "msg.sender" */ caller(), /** @src 69:9481:9565  "abi.encodeCall(IBinHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData))" */ var_key_55228_mpos, var_amount0, var_amount1, var_hookData_55234_offset, var_hookData_55234_length), expr_55269_mpos)
                    mstore(expr_55269_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_55269_mpos, _2)
                    /// @src 69:9459:9566  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.afterDonate, (msg.sender, key, amount0, amount1, hookData)))"
                    pop(fun_callHook(value, expr_55269_mpos))
                }
            }
            /// @ast-id 51143 @src 57:1503:1952  "function validate(uint24 self) internal pure returns (bool valid) {..."
            function fun_validate(var_self) -> var_valid
            {
                /// @src 57:1694:1946  "assembly (\"memory-safe\") {..."
                var_valid := and(lt(and(var_self, 0xfff), 1001), lt(and(var_self, 0xfff000), 4100096))
            }
            /// @ast-id 52827 @src 64:12431:12565  "function _setProtocolFee(PoolId id, uint24 newProtocolFee) internal override {..."
            function fun_setProtocolFee(var_id, var_newProtocolFee)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_id)
                mstore(0x20, /** @src 64:12518:12523  "pools" */ 0x05)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)
                /// @src 70:3896:3921  "self.checkPoolInitialized"
                fun_checkPoolInitialized(dataSlot)
                /// @src 70:3933:3969  "self.slot0.protocolFee = protocolFee"
                update_storage_value_offsett_uint24_to_t_uint24(dataSlot, var_newProtocolFee)
            }
            /// @src 109:830:853  "BeforeSwapDelta.wrap(0)"
            function abi_encode_address_struct_PoolKey_bool_int128_bytes_calldata(headStart, value0, value1, value2, value3, value4, value5) -> tail
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 109:830:853  "BeforeSwapDelta.wrap(0)"
                abi_encode_struct_PoolKey(value1, add(headStart, 32))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 109:830:853  "BeforeSwapDelta.wrap(0)" */ add(headStart, 224), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ iszero(iszero(value2)))
                mstore(/** @src 109:830:853  "BeforeSwapDelta.wrap(0)" */ add(headStart, 256), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, value3))
                /// @src 109:830:853  "BeforeSwapDelta.wrap(0)"
                mstore(add(headStart, 288), 320)
                tail := abi_encode_bytes_calldata(value4, value5, add(headStart, 320))
            }
            function checked_add_int128(x, y) -> sum
            {
                sum := add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 109:830:853  "BeforeSwapDelta.wrap(0)" */ x), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 109:830:853  "BeforeSwapDelta.wrap(0)" */ y))
                if or(sgt(sum, 0x7fffffffffffffffffffffffffffffff), slt(sum, 0xffffffffffffffffffffffffffffffff80000000000000000000000000000000)) { panic_error_0x11() }
            }
            /// @ast-id 55051 @src 69:5772:7464  "function beforeSwap(PoolKey memory key, bool swapForY, int128 amountSpecified, bytes calldata hookData)..."
            function fun_beforeSwap(var_key_54912_mpos, var_swapForY, var_amountSpecified, var_hookData_54918_offset, var_hookData_54918_length) -> var_amountToSwap, var_beforeSwapDelta, var_lpFeeOverride
            {
                /// @src 69:5931:5962  "BeforeSwapDelta beforeSwapDelta"
                var_beforeSwapDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 69:5964:5984  "uint24 lpFeeOverride"
                var_lpFeeOverride := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 69:6018:6047  "IBinHooks(address(key.hooks))"
                let expr_address := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 69:6028:6046  "address(key.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 69:6036:6045  "key.hooks" */ add(var_key_54912_mpos, 64)))))
                /// @src 69:6057:6087  "amountToSwap = amountSpecified"
                var_amountToSwap := var_amountSpecified
                /// @src 69:6189:6203  "key.parameters"
                let _1 := add(var_key_54912_mpos, 160)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := mload(/** @src 69:6189:6203  "key.parameters" */ _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := and(/** @src 69:6189:6247  "key.parameters.shouldCall(HOOKS_BEFORE_SWAP_OFFSET, hooks)" */ expr_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 69:6184:6345  "if (!key.parameters.shouldCall(HOOKS_BEFORE_SWAP_OFFSET, hooks)) {..."
                if /** @src 69:6188:6247  "!key.parameters.shouldCall(HOOKS_BEFORE_SWAP_OFFSET, hooks)" */ cleanup_bool(iszero(/** @src 69:6189:6247  "key.parameters.shouldCall(HOOKS_BEFORE_SWAP_OFFSET, hooks)" */ fun_shouldCall_22068(_2, _3)))
                /// @src 69:6184:6345  "if (!key.parameters.shouldCall(HOOKS_BEFORE_SWAP_OFFSET, hooks)) {..."
                {
                    /// @src 69:6263:6334  "return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride)"
                    var_amountToSwap := var_amountSpecified
                    var_beforeSwapDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 69:6263:6334  "return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride)"
                    var_lpFeeOverride := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 69:6263:6334  "return (amountToSwap, BeforeSwapDeltaLibrary.ZERO_DELTA, lpFeeOverride)"
                    leave
                }
                /// @src 69:6412:6504  "abi.encodeCall(IBinHooks.beforeSwap, (msg.sender, key, swapForY, amountSpecified, hookData))"
                let expr_54974_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:6036:6045  "key.hooks" */ 64)
                /// @src 69:6412:6504  "abi.encodeCall(IBinHooks.beforeSwap, (msg.sender, key, swapForY, amountSpecified, hookData))"
                mstore(add(expr_54974_mpos, 0x20), 0x5177cb2f00000000000000000000000000000000000000000000000000000000)
                let _4 := sub(abi_encode_address_struct_PoolKey_bool_int128_bytes_calldata(add(expr_54974_mpos, 36), /** @src 69:6450:6460  "msg.sender" */ caller(), /** @src 69:6412:6504  "abi.encodeCall(IBinHooks.beforeSwap, (msg.sender, key, swapForY, amountSpecified, hookData))" */ var_key_54912_mpos, var_swapForY, var_amountSpecified, var_hookData_54918_offset, var_hookData_54918_length), expr_54974_mpos)
                mstore(expr_54974_mpos, add(_4, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                finalize_allocation(expr_54974_mpos, _4)
                /// @src 69:6377:6514  "Hooks.callHook(..."
                let expr_54975_mpos := fun_callHook(_3, expr_54974_mpos)
                /// @src 69:6620:6679  "if (result.length != 96) revert Hooks.InvalidHookResponse()"
                if /** @src 69:6624:6643  "result.length != 96" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:6624:6637  "result.length" */ expr_54975_mpos), /** @src 69:6641:6643  "96" */ 0x60))
                /// @src 69:6620:6679  "if (result.length != 96) revert Hooks.InvalidHookResponse()"
                {
                    /// @src 69:6652:6679  "Hooks.InvalidHookResponse()"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:6652:6679  "Hooks.InvalidHookResponse()" */ 0x1e048e1d00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:6412:6504  "abi.encodeCall(IBinHooks.beforeSwap, (msg.sender, key, swapForY, amountSpecified, hookData))" */ 4)
                }
                /// @src 69:6690:6778  "if (key.fee.isDynamicLPFee()) {..."
                if /** @src 69:6694:6718  "key.fee.isDynamicLPFee()" */ fun_isDynamicLPFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 69:6694:6701  "key.fee" */ add(var_key_54912_mpos, 128))))
                /// @src 69:6690:6778  "if (key.fee.isDynamicLPFee()) {..."
                {
                    /// @src 69:6734:6767  "lpFeeOverride = result.parseFee()"
                    var_lpFeeOverride := /** @src 56:874:956  "assembly (\"memory-safe\") {..." */ mload(add(/** @src 69:6750:6767  "result.parseFee()" */ expr_54975_mpos, /** @src 69:6641:6643  "96" */ 0x60))
                }
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _5 := mload(/** @src 69:6857:6871  "key.parameters" */ _1)
                /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                let converted := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                converted := 10
                /// @src 69:6853:7458  "if (key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)) {..."
                if /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:6857:6928  "key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)" */ _5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 10)
                /// @src 69:6853:7458  "if (key.parameters.hasOffsetEnabled(HOOKS_BEFORE_SWAP_RETURNS_DELTA_OFFSET)) {..."
                {
                    /// @src 69:7030:7095  "beforeSwapDelta = BeforeSwapDelta.wrap(result.parseReturnDelta())"
                    var_beforeSwapDelta := /** @src 56:1150:1237  "assembly (\"memory-safe\") {..." */ mload(add(/** @src 69:7069:7094  "result.parseReturnDelta()" */ expr_54975_mpos, /** @src 69:6036:6045  "key.hooks" */ 64))
                    /// @src 69:7137:7172  "beforeSwapDelta.getSpecifiedDelta()"
                    let expr := /** @src 108:2074:2157  "assembly (\"memory-safe\") {..." */ sar(/** @src 69:6694:6701  "key.fee" */ 128, /** @src 69:7137:7172  "beforeSwapDelta.getSpecifiedDelta()" */ var_beforeSwapDelta)
                    /// @src 69:7187:7448  "if (hookDeltaSpecified != 0) {..."
                    if /** @src 69:7191:7214  "hookDeltaSpecified != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 69:7191:7214  "hookDeltaSpecified != 0" */ expr)))
                    /// @src 69:7187:7448  "if (hookDeltaSpecified != 0) {..."
                    {
                        /// @src 69:7252:7268  "amountToSwap < 0"
                        let expr_1 := slt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 69:7252:7268  "amountToSwap < 0" */ var_amountToSwap), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                        /// @src 69:7286:7320  "amountToSwap += hookDeltaSpecified"
                        var_amountToSwap := checked_add_int128(var_amountToSwap, expr)
                        /// @src 69:7342:7390  "exactInput ? amountToSwap > 0 : amountToSwap < 0"
                        let expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                        /// @src 69:7342:7390  "exactInput ? amountToSwap > 0 : amountToSwap < 0"
                        switch expr_1
                        case 0 {
                            expr_2 := /** @src 69:7374:7390  "amountToSwap < 0" */ slt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 69:7374:7390  "amountToSwap < 0" */ var_amountToSwap), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                        }
                        default /// @src 69:7342:7390  "exactInput ? amountToSwap > 0 : amountToSwap < 0"
                        {
                            expr_2 := /** @src 69:7355:7371  "amountToSwap > 0" */ sgt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 69:7355:7371  "amountToSwap > 0" */ var_amountToSwap), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                        }
                        /// @src 69:7338:7433  "if (exactInput ? amountToSwap > 0 : amountToSwap < 0) revert Hooks.HookDeltaExceedsSwapAmount()"
                        if expr_2
                        {
                            /// @src 69:7399:7433  "Hooks.HookDeltaExceedsSwapAmount()"
                            mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:7399:7433  "Hooks.HookDeltaExceedsSwapAmount()" */ 0xfa0b71d600000000000000000000000000000000000000000000000000000000)
                            revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:6412:6504  "abi.encodeCall(IBinHooks.beforeSwap, (msg.sender, key, swapForY, amountSpecified, hookData))" */ 4)
                        }
                    }
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function negate_wrapping_int128(value) -> ret
            {
                ret := signextend(15, sub(0, value))
            }
            function convert_int128_to_uint128(value) -> converted
            {
                converted := and(0xffffffffffffffffffffffffffffffff, value)
            }
            /// @ast-id 55926 @src 70:4778:9639  "function swap(State storage self, SwapParams memory params)..."
            function fun_swap(var_self_55532_slot, var_params_55535_mpos) -> var_result, var_swapState_mpos
            {
                /// @src 70:4893:4919  "SwapState memory swapState"
                var_swapState_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ allocate_and_zero_memory_struct_struct_SwapState()
                /// @src 70:4935:4971  "Slot0 memory slot0Cache = self.slot0"
                let var_slot0Cache_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ read_from_storage_reference_type_struct_Slot0(/** @src 70:4935:4971  "Slot0 memory slot0Cache = self.slot0" */ var_self_55532_slot)
                /// @src 70:4981:5021  "swapState.activeId = slot0Cache.activeId"
                write_to_memory_uint24(var_swapState_mpos, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:5002:5021  "slot0Cache.activeId" */ var_slot0Cache_mpos)))
                /// @src 70:5047:5062  "params.swapForY"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_bool(mload(/** @src 70:5047:5062  "params.swapForY" */ var_params_55535_mpos))
                /// @src 70:5108:5204  "swapForY ? slot0Cache.protocolFee.getZeroForOneFee() : slot0Cache.protocolFee.getOneForZeroFee()"
                let expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:5108:5204  "swapForY ? slot0Cache.protocolFee.getZeroForOneFee() : slot0Cache.protocolFee.getOneForZeroFee()"
                switch _1
                case 0 {
                    expr := /** @src 70:5163:5204  "slot0Cache.protocolFee.getOneForZeroFee()" */ fun_getOneForZeroFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:5163:5185  "slot0Cache.protocolFee" */ add(var_slot0Cache_mpos, 32))))
                }
                default /// @src 70:5108:5204  "swapForY ? slot0Cache.protocolFee.getZeroForOneFee() : slot0Cache.protocolFee.getOneForZeroFee()"
                {
                    expr := /** @src 70:5119:5160  "slot0Cache.protocolFee.getZeroForOneFee()" */ fun_getZeroForOneFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:5119:5141  "slot0Cache.protocolFee" */ add(var_slot0Cache_mpos, 32))))
                }
                /// @src 70:5072:5093  "swapState.protocolFee"
                let _2 := add(var_swapState_mpos, 32)
                /// @src 70:5072:5204  "swapState.protocolFee =..."
                write_to_memory_uint16(_2, expr)
                /// @src 70:5232:5254  "params.amountSpecified"
                let _3 := add(var_params_55535_mpos, 96)
                /// @src 70:5232:5258  "params.amountSpecified < 0"
                let expr_1 := slt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, cleanup_int128(mload(/** @src 70:5232:5254  "params.amountSpecified" */ _3))), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                /// @src 71:648:650  "32"
                let _4 := cleanup_from_storage_uint24(mload(/** @src 70:5298:5318  "params.lpFeeOverride" */ add(var_params_55535_mpos, 64)))
                /// @src 70:5298:5331  "params.lpFeeOverride.isOverride()"
                let expr_2 := fun_isOverride(/** @src 71:648:650  "32" */ _4)
                /// @src 70:5298:5461  "params.lpFeeOverride.isOverride()..."
                let expr_3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:5298:5461  "params.lpFeeOverride.isOverride()..."
                switch expr_2
                case 0 {
                    expr_3 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:5445:5461  "slot0Cache.lpFee" */ add(var_slot0Cache_mpos, /** @src 70:5298:5318  "params.lpFeeOverride" */ 64)))
                }
                default /// @src 70:5298:5461  "params.lpFeeOverride.isOverride()..."
                {
                    expr_3 := /** @src 70:5350:5426  "params.lpFeeOverride.removeOverrideAndValidate(LPFeeLibrary.TEN_PERCENT_FEE)" */ fun_removeOverrideAndValidate(_4)
                }
                /// @src 70:5573:5594  "swapState.protocolFee"
                let _5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint16(mload(/** @src 70:5573:5594  "swapState.protocolFee" */ _2))
                /// @src 70:5573:5655  "swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)"
                let expr_4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:5573:5655  "swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)"
                switch /** @src 70:5573:5599  "swapState.protocolFee == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 70:5573:5599  "swapState.protocolFee == 0" */ _5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff))
                case /** @src 70:5573:5655  "swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)" */ 0 {
                    expr_4 := /** @src 70:5610:5655  "swapState.protocolFee.calculateSwapFee(lpFee)" */ fun_calculateSwapFee(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _5, /** @src 70:5610:5655  "swapState.protocolFee.calculateSwapFee(lpFee)" */ expr_3)
                }
                default /// @src 70:5573:5655  "swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)"
                { expr_4 := expr_3 }
                /// @src 70:5553:5655  "swapState.swapFee = swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)"
                write_to_memory_uint24(/** @src 70:5553:5570  "swapState.swapFee" */ add(var_swapState_mpos, /** @src 70:5298:5318  "params.lpFeeOverride" */ 64), /** @src 70:5553:5655  "swapState.swapFee = swapState.protocolFee == 0 ? lpFee : swapState.protocolFee.calculateSwapFee(lpFee)" */ expr_4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _6 := cleanup_int128(mload(/** @src 70:5754:5776  "params.amountSpecified" */ _3))
                /// @src 70:5754:5781  "params.amountSpecified == 0"
                let _7 := cleanup_int128(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _6)
                /// @src 70:5750:5809  "if (params.amountSpecified == 0) return (result, swapState)"
                if /** @src 70:5754:5781  "params.amountSpecified == 0" */ iszero(_7)
                /// @src 70:5750:5809  "if (params.amountSpecified == 0) return (result, swapState)"
                {
                    /// @src 70:5783:5809  "return (result, swapState)"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 70:5783:5809  "return (result, swapState)"
                    var_swapState_mpos := var_swapState_mpos
                    leave
                }
                /// @src 70:5877:5972  "params.amountSpecified > 0 ? uint128(params.amountSpecified) : uint128(-params.amountSpecified)"
                let expr_5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:5877:5972  "params.amountSpecified > 0 ? uint128(params.amountSpecified) : uint128(-params.amountSpecified)"
                switch /** @src 70:5877:5903  "params.amountSpecified > 0" */ sgt(_7, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                case /** @src 70:5877:5972  "params.amountSpecified > 0 ? uint128(params.amountSpecified) : uint128(-params.amountSpecified)" */ 0 {
                    expr_5 := /** @src 70:5940:5972  "uint128(-params.amountSpecified)" */ convert_int128_to_uint128(/** @src 70:5948:5971  "-params.amountSpecified" */ negate_wrapping_int128(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _6))
                }
                default /// @src 70:5877:5972  "params.amountSpecified > 0 ? uint128(params.amountSpecified) : uint128(-params.amountSpecified)"
                {
                    expr_5 := /** @src 70:5906:5937  "uint128(params.amountSpecified)" */ convert_int128_to_uint128(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _6)
                }
                /// @src 70:6139:6210  "(swapForY == exactInput) ? amount.encodeFirst() : amount.encodeSecond()"
                let expr_6 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:6139:6210  "(swapForY == exactInput) ? amount.encodeFirst() : amount.encodeSecond()"
                switch /** @src 70:6140:6162  "swapForY == exactInput" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ iszero(iszero(/** @src 70:6140:6162  "swapForY == exactInput" */ _1)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ expr_1)
                case /** @src 70:6139:6210  "(swapForY == exactInput) ? amount.encodeFirst() : amount.encodeSecond()" */ 0 {
                    expr_6 := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 70:6189:6210  "amount.encodeSecond()" */ expr_5)
                }
                default /// @src 70:6139:6210  "(swapForY == exactInput) ? amount.encodeFirst() : amount.encodeSecond()"
                {
                    expr_6 := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 70:6166:6186  "amount.encodeFirst()" */ expr_5, /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455)
                }
                /// @src 70:6117:6210  "bytes32 amountsLeft = (swapForY == exactInput) ? amount.encodeFirst() : amount.encodeSecond()"
                let var_amountsLeft := expr_6
                /// @src 70:6354:6380  "bytes32 amountsUnspecified"
                let var_amountsUnspecified := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:6354:6380  "bytes32 amountsUnspecified"
                var_amountsUnspecified := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:6391:8744  "while (true) {..."
                for { }
                /** @src 70:6398:6402  "true" */ 0x01
                /// @src 70:6391:8744  "while (true) {..."
                { }
                {
                    /// @src 70:6440:6457  "self.reserveOfBin"
                    let _8 := add(var_self_55532_slot, /** @src 70:6398:6402  "true" */ 0x01)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _9 := sload(/** @src 70:6440:6477  "self.reserveOfBin[swapState.activeId]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_8, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:6458:6476  "swapState.activeId" */ var_swapState_mpos))))
                    /// @src 70:6491:8112  "if (!binReserves.isEmpty(!swapForY)) {..."
                    if /** @src 70:6495:6526  "!binReserves.isEmpty(!swapForY)" */ cleanup_bool(iszero(/** @src 70:6496:6526  "binReserves.isEmpty(!swapForY)" */ fun_isEmpty(_9, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ iszero(/** @src 70:6140:6162  "swapForY == exactInput" */ _1))))
                    /// @src 70:6491:8112  "if (!binReserves.isEmpty(!swapForY)) {..."
                    {
                        /// @src 70:6546:6571  "bytes32 amountsInWithFees"
                        let var_amountsInWithFees := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                        /// @src 70:6589:6612  "bytes32 amountsOutOfBin"
                        let var_amountsOutOfBin := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                        /// @src 70:6630:6646  "bytes32 totalFee"
                        let var_totalFee := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                        /// @src 70:6665:7470  "if (exactInput) {..."
                        switch expr_1
                        case 0 {
                            /// @src 70:7200:7217  "swapState.swapFee"
                            let _10 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:7200:7217  "swapState.swapFee" */ add(var_swapState_mpos, /** @src 70:5298:5318  "params.lpFeeOverride" */ 64)))
                            /// @src 70:7219:7233  "params.binStep"
                            let _11 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint16(mload(/** @src 70:7219:7233  "params.binStep" */ add(var_params_55535_mpos, /** @src 70:5072:5093  "swapState.protocolFee" */ 32)))
                            /// @src 70:7150:7298  "binReserves.getAmountsIn(..."
                            let expr_55739_component, expr_55739_component_1, expr_55739_component_2 := fun_getAmountsIn(_9, _10, _11, _1, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:7245:7263  "swapState.activeId" */ var_swapState_mpos)), /** @src 70:7150:7298  "binReserves.getAmountsIn(..." */ var_amountsLeft)
                            /// @src 70:7101:7298  "(amountsInWithFees, amountsOutOfBin, totalFee) = binReserves.getAmountsIn(..."
                            var_totalFee := expr_55739_component_2
                            var_amountsOutOfBin := expr_55739_component_1
                            var_amountsInWithFees := expr_55739_component
                            /// @src 70:7321:7367  "amountsLeft = amountsLeft.sub(amountsOutOfBin)"
                            var_amountsLeft := /** @src 70:7335:7367  "amountsLeft.sub(amountsOutOfBin)" */ fun_sub(var_amountsLeft, expr_55739_component_1)
                            /// @src 70:7389:7451  "amountsUnspecified = amountsUnspecified.add(amountsInWithFees)"
                            var_amountsUnspecified := /** @src 70:7410:7451  "amountsUnspecified.add(amountsInWithFees)" */ fun_add_57825(var_amountsUnspecified, expr_55739_component)
                        }
                        default /// @src 70:6665:7470  "if (exactInput) {..."
                        {
                            /// @src 70:6803:6820  "swapState.swapFee"
                            let _12 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:6803:6820  "swapState.swapFee" */ add(var_swapState_mpos, /** @src 70:5298:5318  "params.lpFeeOverride" */ 64)))
                            /// @src 70:6822:6836  "params.binStep"
                            let _13 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint16(mload(/** @src 70:6822:6836  "params.binStep" */ add(var_params_55535_mpos, /** @src 70:5072:5093  "swapState.protocolFee" */ 32)))
                            /// @src 70:6752:6901  "binReserves.getAmountsOut(..."
                            let expr_55707_component, expr_55707_component_1, expr_55707_component_2 := fun_getAmountsOut(_9, _12, _13, _1, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:6848:6866  "swapState.activeId" */ var_swapState_mpos)), /** @src 70:6752:6901  "binReserves.getAmountsOut(..." */ var_amountsLeft)
                            /// @src 70:6703:6901  "(amountsInWithFees, amountsOutOfBin, totalFee) = binReserves.getAmountsOut(..."
                            var_totalFee := expr_55707_component_2
                            var_amountsOutOfBin := expr_55707_component_1
                            var_amountsInWithFees := expr_55707_component
                            /// @src 70:6924:6972  "amountsLeft = amountsLeft.sub(amountsInWithFees)"
                            var_amountsLeft := /** @src 70:6938:6972  "amountsLeft.sub(amountsInWithFees)" */ fun_sub(var_amountsLeft, expr_55707_component)
                            /// @src 70:6994:7054  "amountsUnspecified = amountsUnspecified.add(amountsOutOfBin)"
                            var_amountsUnspecified := /** @src 70:7015:7054  "amountsUnspecified.add(amountsOutOfBin)" */ fun_add_57825(var_amountsUnspecified, expr_55707_component_1)
                        }
                        /// @src 70:7488:8098  "if (amountsInWithFees > 0) {..."
                        if /** @src 70:7492:7513  "amountsInWithFees > 0" */ iszero(iszero(var_amountsInWithFees))
                        /// @src 70:7488:8098  "if (amountsInWithFees > 0) {..."
                        {
                            /// @src 70:7690:7712  "slot0Cache.protocolFee"
                            let _14 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:7690:7712  "slot0Cache.protocolFee" */ add(var_slot0Cache_mpos, /** @src 70:5072:5093  "swapState.protocolFee" */ 32)))
                            /// @src 70:7663:7732  "totalFee.getProtocolFeeAmt(slot0Cache.protocolFee, swapState.swapFee)"
                            let expr_7 := fun_getProtocolFeeAmt(var_totalFee, _14, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:7714:7731  "swapState.swapFee" */ add(var_swapState_mpos, /** @src 70:5298:5318  "params.lpFeeOverride" */ 64))))
                            /// @src 70:7754:7962  "if (pFee != 0) {..."
                            if /** @src 70:7758:7767  "pFee != 0" */ iszero(iszero(expr_7))
                            /// @src 70:7754:7962  "if (pFee != 0) {..."
                            {
                                /// @src 70:7827:7856  "swapState.feeAmountToProtocol"
                                let _15 := add(var_swapState_mpos, /** @src 70:5232:5254  "params.amountSpecified" */ 96)
                                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                                mstore(_15, /** @src 70:7827:7866  "swapState.feeAmountToProtocol.add(pFee)" */ fun_add_57825(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:7827:7856  "swapState.feeAmountToProtocol" */ _15), /** @src 70:7827:7866  "swapState.feeAmountToProtocol.add(pFee)" */ expr_7))
                                /// @src 70:7892:7939  "amountsInWithFees = amountsInWithFees.sub(pFee)"
                                var_amountsInWithFees := /** @src 70:7912:7939  "amountsInWithFees.sub(pFee)" */ fun_sub(var_amountsInWithFees, expr_7)
                            }
                            /// @src 55:1449:1456  "100_000"
                            sstore(/** @src 70:7984:8021  "self.reserveOfBin[swapState.activeId]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_8, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:8002:8020  "swapState.activeId" */ var_swapState_mpos))), /** @src 70:8024:8079  "binReserves.add(amountsInWithFees).sub(amountsOutOfBin)" */ fun_sub(/** @src 70:8024:8058  "binReserves.add(amountsInWithFees)" */ fun_add_57825(_9, var_amountsInWithFees), /** @src 70:8024:8079  "binReserves.add(amountsInWithFees).sub(amountsOutOfBin)" */ var_amountsOutOfBin))
                        }
                    }
                    /// @src 70:8126:8734  "if (amountsLeft == 0) {..."
                    switch /** @src 70:8130:8146  "amountsLeft == 0" */ iszero(var_amountsLeft)
                    case /** @src 70:8126:8734  "if (amountsLeft == 0) {..." */ 0 {
                        /// @src 70:8226:8280  "getNextNonEmptyBin(self, swapForY, swapState.activeId)"
                        let expr_8 := fun_getNextNonEmptyBin(var_self_55532_slot, _1, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:8261:8279  "swapState.activeId" */ var_swapState_mpos)))
                        /// @src 70:8413:8675  "assembly (\"memory-safe\") {..."
                        if or(iszero(expr_8), eq(expr_8, 0xffffff))
                        {
                            mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:8413:8675  "assembly (\"memory-safe\") {..." */ 0x96aa65ad)
                            revert(0x1c, 0x04)
                        }
                        /// @src 70:8692:8719  "swapState.activeId = nextId"
                        write_to_memory_uint24(var_swapState_mpos, expr_8)
                    }
                    default /// @src 70:8126:8734  "if (amountsLeft == 0) {..."
                    {
                        /// @src 70:8166:8171  "break"
                        break
                    }
                }
                /// @src 70:8754:8830  "if (amountsUnspecified == 0) revert BinPool__InsufficientAmountUnSpecified()"
                if /** @src 70:8758:8781  "amountsUnspecified == 0" */ iszero(var_amountsUnspecified)
                /// @src 70:8754:8830  "if (amountsUnspecified == 0) revert BinPool__InsufficientAmountUnSpecified()"
                {
                    /// @src 70:8790:8830  "BinPool__InsufficientAmountUnSpecified()"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:8790:8830  "BinPool__InsufficientAmountUnSpecified()" */ 0x19f7ff4a00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:8790:8830  "BinPool__InsufficientAmountUnSpecified()" */ 4)
                }
                /// @src 70:8841:8881  "self.slot0.activeId = swapState.activeId"
                update_storage_value_offset_0t_uint24_to_uint24(var_self_55532_slot, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:8863:8881  "swapState.activeId" */ var_swapState_mpos)))
                /// @src 70:8977:9623  "if (exactInput) {..."
                switch expr_1
                case 0 {
                    /// @src 70:9329:9609  "if (swapForY) {..."
                    switch _1
                    case 0 {
                        /// @src 70:9524:9543  "amount.safeInt128()"
                        let expr_9 := fun_safeInt128(expr_5)
                        /// @src 70:9500:9590  "result = toBalanceDelta(amount.safeInt128(), -(amountsUnspecified.decodeY().safeInt128()))"
                        var_result := /** @src 70:9509:9590  "toBalanceDelta(amount.safeInt128(), -(amountsUnspecified.decodeY().safeInt128()))" */ fun_toBalanceDelta(expr_9, /** @src 70:9545:9589  "-(amountsUnspecified.decodeY().safeInt128())" */ negate_wrapping_int128(/** @src 70:9547:9588  "amountsUnspecified.decodeY().safeInt128()" */ fun_safeInt128(/** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(128, /** @src 70:9547:9575  "amountsUnspecified.decodeY()" */ var_amountsUnspecified))))
                    }
                    default /// @src 70:9329:9609  "if (swapForY) {..."
                    {
                        /// @src 70:9389:9431  "-amountsUnspecified.decodeX().safeInt128()"
                        let expr_10 := negate_wrapping_int128(/** @src 70:9390:9431  "amountsUnspecified.decodeX().safeInt128()" */ fun_safeInt128(/** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 70:9390:9418  "amountsUnspecified.decodeX()" */ var_amountsUnspecified, /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455)))
                        /// @src 70:9365:9453  "result = toBalanceDelta(-amountsUnspecified.decodeX().safeInt128(), amount.safeInt128())"
                        var_result := /** @src 70:9374:9453  "toBalanceDelta(-amountsUnspecified.decodeX().safeInt128(), amount.safeInt128())" */ fun_toBalanceDelta(expr_10, /** @src 70:9433:9452  "amount.safeInt128()" */ fun_safeInt128(expr_5))
                    }
                }
                default /// @src 70:8977:9623  "if (exactInput) {..."
                {
                    /// @src 70:9011:9291  "if (swapForY) {..."
                    switch _1
                    case 0 {
                        /// @src 70:9206:9247  "amountsUnspecified.decodeX().safeInt128()"
                        let expr_11 := fun_safeInt128(/** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 70:9206:9234  "amountsUnspecified.decodeX()" */ var_amountsUnspecified, /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455))
                        /// @src 70:9182:9272  "result = toBalanceDelta(amountsUnspecified.decodeX().safeInt128(), -(amount.safeInt128()))"
                        var_result := /** @src 70:9191:9272  "toBalanceDelta(amountsUnspecified.decodeX().safeInt128(), -(amount.safeInt128()))" */ fun_toBalanceDelta(expr_11, /** @src 70:9249:9271  "-(amount.safeInt128())" */ negate_wrapping_int128(/** @src 70:9251:9270  "amount.safeInt128()" */ fun_safeInt128(expr_5)))
                    }
                    default /// @src 70:9011:9291  "if (swapForY) {..."
                    {
                        /// @src 70:9071:9091  "-amount.safeInt128()"
                        let expr_12 := negate_wrapping_int128(/** @src 70:9072:9091  "amount.safeInt128()" */ fun_safeInt128(expr_5))
                        /// @src 70:9047:9135  "result = toBalanceDelta(-amount.safeInt128(), amountsUnspecified.decodeY().safeInt128())"
                        var_result := /** @src 70:9056:9135  "toBalanceDelta(-amount.safeInt128(), amountsUnspecified.decodeY().safeInt128())" */ fun_toBalanceDelta(expr_12, /** @src 70:9093:9134  "amountsUnspecified.decodeY().safeInt128()" */ fun_safeInt128(/** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(128, /** @src 70:9093:9121  "amountsUnspecified.decodeY()" */ var_amountsUnspecified)))
                    }
                }
            }
            /// @ast-id 57769 @src 78:3408:3554  "function decodeY(bytes32 z) internal pure returns (uint128 y) {..."
            function fun_decodeY(var_z) -> var_y
            {
                /// @src 78:3480:3548  "assembly (\"memory-safe\") {..."
                var_y := shr(128, var_z)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function abi_encode_address_struct_PoolKey_bool_int128_userDefinedValueType_BalanceDelta_bytes_calldata(headStart, value0, value1, value2, value3, value4, value5, value6) -> tail
            {
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                abi_encode_struct_PoolKey(value1, add(headStart, 32))
                mstore(add(headStart, 224), iszero(iszero(value2)))
                mstore(add(headStart, 256), signextend(15, value3))
                mstore(add(headStart, 288), value4)
                mstore(add(headStart, 320), 352)
                tail := abi_encode_bytes_calldata(value5, value6, add(headStart, 352))
            }
            /// @ast-id 55175 @src 69:7470:8810  "function afterSwap(..."
            function fun_afterSwap(var_key_mpos, var_swapForY, var_amountSpecified, var_delta, var_hookData_55063_offset, var_hookData_55063_length, var_beforeSwapDelta) -> var, var_1
            {
                /// @src 69:7754:7783  "IBinHooks(address(key.hooks))"
                let expr_55084_address := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 69:7764:7782  "address(key.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 69:7772:7781  "key.hooks" */ add(var_key_mpos, 64)))))
                /// @src 69:7822:7857  "beforeSwapDelta.getSpecifiedDelta()"
                let expr := /** @src 108:2074:2157  "assembly (\"memory-safe\") {..." */ sar(128, /** @src 69:7822:7857  "beforeSwapDelta.getSpecifiedDelta()" */ var_beforeSwapDelta)
                /// @src 69:7867:7934  "int128 hookDeltaUnspecified = beforeSwapDelta.getUnspecifiedDelta()"
                let var_hookDeltaUnspecified := /** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ signextend(15, /** @src 69:7897:7934  "beforeSwapDelta.getUnspecifiedDelta()" */ var_beforeSwapDelta)
                /// @src 69:7948:7962  "key.parameters"
                let _1 := add(var_key_mpos, 160)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := mload(/** @src 69:7948:7962  "key.parameters" */ _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := and(/** @src 69:7948:8005  "key.parameters.shouldCall(HOOKS_AFTER_SWAP_OFFSET, hooks)" */ expr_55084_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 69:7944:8337  "if (key.parameters.shouldCall(HOOKS_AFTER_SWAP_OFFSET, hooks)) {..."
                if /** @src 69:7948:8005  "key.parameters.shouldCall(HOOKS_AFTER_SWAP_OFFSET, hooks)" */ fun_shouldCall(_2, _3)
                /// @src 69:7944:8337  "if (key.parameters.shouldCall(HOOKS_AFTER_SWAP_OFFSET, hooks)) {..."
                {
                    /// @src 69:8115:8213  "abi.encodeCall(IBinHooks.afterSwap, (msg.sender, key, swapForY, amountSpecified, delta, hookData))"
                    let expr_55120_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:7772:7781  "key.hooks" */ 64)
                    /// @src 69:8115:8213  "abi.encodeCall(IBinHooks.afterSwap, (msg.sender, key, swapForY, amountSpecified, delta, hookData))"
                    mstore(add(expr_55120_mpos, 0x20), 0x5e927caa00000000000000000000000000000000000000000000000000000000)
                    let _4 := sub(abi_encode_address_struct_PoolKey_bool_int128_userDefinedValueType_BalanceDelta_bytes_calldata(add(expr_55120_mpos, 36), /** @src 69:8152:8162  "msg.sender" */ caller(), /** @src 69:8115:8213  "abi.encodeCall(IBinHooks.afterSwap, (msg.sender, key, swapForY, amountSpecified, delta, hookData))" */ var_key_mpos, var_swapForY, var_amountSpecified, var_delta, var_hookData_55063_offset, var_hookData_55063_length), expr_55120_mpos)
                    mstore(expr_55120_mpos, add(_4, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_55120_mpos, _4)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _5 := mload(/** @src 69:8231:8245  "key.parameters" */ _1)
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted := 11
                    /// @src 69:8021:8326  "hookDeltaUnspecified += Hooks.callHookWithReturnDelta(..."
                    var_hookDeltaUnspecified := checked_add_int128(var_hookDeltaUnspecified, /** @src 69:8045:8326  "Hooks.callHookWithReturnDelta(..." */ fun_toInt128(/** @src 69:8045:8315  "Hooks.callHookWithReturnDelta(..." */ fun_callHookWithReturnDelta(_3, expr_55120_mpos, /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:8231:8301  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_SWAP_RETURNS_DELTA_OFFSET)" */ _5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 11))))
                }
                /// @src 69:8347:8369  "BalanceDelta hookDelta"
                let var_hookDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 69:8347:8369  "BalanceDelta hookDelta"
                var_hookDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 69:8383:8408  "hookDeltaUnspecified != 0"
                let _6 := iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(/** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ 15, /** @src 69:8383:8408  "hookDeltaUnspecified != 0" */ var_hookDeltaUnspecified))
                /// @src 69:8383:8435  "hookDeltaUnspecified != 0 || hookDeltaSpecified != 0"
                let expr_1 := /** @src 69:8383:8408  "hookDeltaUnspecified != 0" */ iszero(_6)
                /// @src 69:8383:8435  "hookDeltaUnspecified != 0 || hookDeltaSpecified != 0"
                if _6
                {
                    expr_1 := /** @src 69:8412:8435  "hookDeltaSpecified != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(/** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ 15, /** @src 69:8412:8435  "hookDeltaSpecified != 0" */ expr)))
                }
                /// @src 69:8379:8768  "if (hookDeltaUnspecified != 0 || hookDeltaSpecified != 0) {..."
                if expr_1
                {
                    /// @src 69:8463:8646  "(amountSpecified < 0 == swapForY)..."
                    let expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 69:8463:8646  "(amountSpecified < 0 == swapForY)..."
                    switch /** @src 69:8464:8495  "amountSpecified < 0 == swapForY" */ eq(/** @src 69:8464:8483  "amountSpecified < 0" */ slt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(/** @src 108:2263:2352  "assembly (\"memory-safe\") {..." */ 15, /** @src 69:8464:8483  "amountSpecified < 0" */ var_amountSpecified), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0), iszero(iszero(/** @src 69:8464:8495  "amountSpecified < 0 == swapForY" */ var_swapForY)))
                    case /** @src 69:8463:8646  "(amountSpecified < 0 == swapForY)..." */ 0 {
                        expr_2 := /** @src 69:8590:8646  "toBalanceDelta(hookDeltaUnspecified, hookDeltaSpecified)" */ fun_toBalanceDelta(var_hookDeltaUnspecified, expr)
                    }
                    default /// @src 69:8463:8646  "(amountSpecified < 0 == swapForY)..."
                    {
                        expr_2 := /** @src 69:8515:8571  "toBalanceDelta(hookDeltaSpecified, hookDeltaUnspecified)" */ fun_toBalanceDelta(expr, var_hookDeltaUnspecified)
                    }
                    /// @src 69:8451:8646  "hookDelta = (amountSpecified < 0 == swapForY)..."
                    var_hookDelta := expr_2
                    /// @src 69:8732:8757  "delta = delta - hookDelta"
                    var_delta := /** @src 69:8740:8757  "delta - hookDelta" */ fun_sub_67906(var_delta, expr_2)
                }
                /// @src 69:8778:8803  "return (delta, hookDelta)"
                var := var_delta
                var_1 := var_hookDelta
            }
            /// @ast-id 50960 @src 55:1636:1750  "function isDynamicLPFee(uint24 self) internal pure returns (bool) {..."
            function fun_isDynamicLPFee(var_self) -> var
            {
                /// @src 55:1712:1743  "return self == DYNAMIC_FEE_FLAG"
                var := /** @src 55:1719:1743  "self == DYNAMIC_FEE_FLAG" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 55:1719:1743  "self == DYNAMIC_FEE_FLAG" */ var_self, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), /** @src 55:900:908  "0x800000" */ 0x800000)
            }
            /// @ast-id 55511 @src 70:4046:4186  "function setLPFee(State storage self, uint24 lpFee) internal {..."
            function fun_setLPFee(var_self_55492_slot, var_lpFee)
            {
                /// @src 70:4117:4142  "self.checkPoolInitialized"
                fun_checkPoolInitialized(var_self_55492_slot)
                /// @src 70:4155:4179  "self.slot0.lpFee = lpFee"
                update_storage_value_offsett_uint24_to_uint24(var_self_55492_slot, var_lpFee)
            }
            /// @src 66:569:570  "4"
            function abi_encode_struct_BurnParams(value, pos) -> end
            {
                let memberValue0 := mload(value)
                mstore(pos, 0x60)
                let tail := abi_encode_array_bytes32_dyn(memberValue0, add(pos, 0x60))
                let memberValue0_1 := mload(add(value, 0x20))
                mstore(add(pos, 0x20), sub(tail, pos))
                let tail_1 := abi_encode_array_bytes32_dyn(memberValue0_1, tail)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:569:570  "4" */ add(pos, 0x40), mload(add(value, 0x40)))
                end := tail_1
            }
            /// @ast-id 54832 @src 69:4571:4957  "function beforeBurn(PoolKey memory key, IBinPoolManager.BurnParams memory params, bytes calldata hookData)..."
            function fun_beforeBurn(var_key_54787_mpos, var_params_mpos, var_hookData_54792_offset, var_hookData_length)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:4745:4754  "key.hooks" */ add(var_key_54787_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                let _1 := mload(/** @src 69:4770:4784  "key.parameters" */ add(var_key_54787_mpos, 160))
                /// @src 69:4770:4828  "key.parameters.shouldCall(HOOKS_BEFORE_BURN_OFFSET, hooks)"
                let var := /** @src -1:-1:-1 */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4, /** @src 69:4770:4828  "key.parameters.shouldCall(HOOKS_BEFORE_BURN_OFFSET, hooks)" */ _1), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 69:4770:4828  "key.parameters.shouldCall(HOOKS_BEFORE_BURN_OFFSET, hooks)" */ value, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:4766:4951  "if (key.parameters.shouldCall(HOOKS_BEFORE_BURN_OFFSET, hooks)) {..."
                if /** @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender" */ expr
                /// @src 69:4766:4951  "if (key.parameters.shouldCall(HOOKS_BEFORE_BURN_OFFSET, hooks)) {..."
                {
                    /// @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))"
                    let expr_54826_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:4745:4754  "key.hooks" */ 64)
                    /// @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))"
                    mstore(add(expr_54826_mpos, 0x20), 0x6eceef0800000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ add(expr_54826_mpos, 36), /** @src 69:4904:4914  "msg.sender" */ caller())
                    /// @src 66:569:570  "4"
                    abi_encode_struct_PoolKey(var_key_54787_mpos, add(/** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos, /** @src 66:569:570  "4" */ 68))
                    mstore(add(/** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos, /** @src 66:569:570  "4" */ 260), 288)
                    let tail := abi_encode_struct_BurnParams(var_params_mpos, add(/** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos, /** @src 66:569:570  "4" */ 324))
                    mstore(add(/** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos, /** @src 66:569:570  "4" */ 292), add(sub(tail, /** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos), /** @src 66:569:570  "4" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffdc))
                    /// @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))"
                    let _2 := sub(/** @src 66:569:570  "4" */ abi_encode_bytes_calldata(var_hookData_54792_offset, var_hookData_length, tail), /** @src 69:4866:4939  "abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData))" */ expr_54826_mpos)
                    mstore(expr_54826_mpos, add(_2, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_54826_mpos, _2)
                    /// @src 69:4844:4940  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.beforeBurn, (msg.sender, key, params, hookData)))"
                    pop(fun_callHook(value, expr_54826_mpos))
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function allocate_and_zero_memory_array_array_bytes32_dyn(length) -> memPtr
            {
                let _1 := array_allocation_size_array_uint256_dyn(length)
                let memPtr_1 := mload(64)
                finalize_allocation(memPtr_1, _1)
                mstore(memPtr_1, length)
                memPtr := memPtr_1
                calldatacopy(add(memPtr_1, 32), calldatasize(), add(array_allocation_size_array_uint256_dyn(length), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
            }
            function memory_array_index_access_uint256_dyn(baseRef, index) -> addr
            {
                if iszero(lt(index, mload(baseRef)))
                {
                    mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                    mstore(4, 0x32)
                    revert(0, 0x24)
                }
                addr := add(add(baseRef, shl(5, index)), 32)
            }
            /// @ast-id 56339 @src 70:12852:14317  "function burn(State storage self, BurnParams memory params)..."
            function fun_burn_56339(var_self_56157_slot, var_params_56160_mpos) -> var_result, var_ids_mpos, var_amounts_mpos
            {
                /// @src 70:13029:13045  "ids = params.ids"
                var_ids_mpos := /** @src 70:13035:13045  "params.ids" */ mload(add(var_params_56160_mpos, 32))
                /// @src 70:13088:13108  "params.amountsToBurn"
                let _mpos := mload(add(var_params_56160_mpos, 64))
                /// @src 70:13123:13133  "ids.length"
                let expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13123:13133  "ids.length" */ var_ids_mpos)
                /// @src 70:13123:13176  "ids.length == 0 || ids.length != amountsToBurn.length"
                let expr_1 := /** @src 70:13123:13138  "ids.length == 0" */ iszero(expr)
                /// @src 70:13123:13176  "ids.length == 0 || ids.length != amountsToBurn.length"
                if iszero(expr_1)
                {
                    expr_1 := /** @src 70:13142:13176  "ids.length != amountsToBurn.length" */ iszero(eq(expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13156:13176  "amountsToBurn.length" */ _mpos)))
                }
                /// @src 70:13119:13212  "if (ids.length == 0 || ids.length != amountsToBurn.length) revert BinPool__InvalidBurnInput()"
                if expr_1
                {
                    /// @src 70:13185:13212  "BinPool__InvalidBurnInput()"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13185:13212  "BinPool__InvalidBurnInput()" */ 0x699e4b6e00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13185:13212  "BinPool__InvalidBurnInput()" */ 4)
                }
                /// @src 70:13223:13241  "bytes32 amountsOut"
                let var_amountsOut := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:13223:13241  "bytes32 amountsOut"
                var_amountsOut := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:13251:13286  "amounts = new bytes32[](ids.length)"
                var_amounts_mpos := /** @src 70:13261:13286  "new bytes32[](ids.length)" */ allocate_and_zero_memory_array_array_bytes32_dyn(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13275:13285  "ids.length" */ var_ids_mpos))
                /// @src 70:13301:13310  "uint256 i"
                let var_i := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:13301:13310  "uint256 i"
                var_i := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:13296:14207  "for (uint256 i; i < ids.length;) {..."
                for { }
                /** @src 70:13532:13549  "self.reserveOfBin" */ 1
                /// @src 70:13301:13310  "uint256 i"
                { }
                {
                    /// @src 70:13312:13326  "i < ids.length"
                    if iszero(lt(var_i, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13316:13326  "ids.length" */ var_ids_mpos)))
                    /// @src 70:13312:13326  "i < ids.length"
                    { break }
                    /// @src 70:13355:13370  "ids[i].safe24()"
                    let expr_2 := fun_safe24(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13355:13361  "ids[i]" */ memory_array_index_access_uint256_dyn(var_ids_mpos, var_i)))
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _1 := mload(/** @src 70:13407:13423  "amountsToBurn[i]" */ memory_array_index_access_uint256_dyn(_mpos, var_i))
                    /// @src 70:13438:13495  "if (amountToBurn == 0) revert BinPool__BurnZeroAmount(id)"
                    if /** @src 70:13442:13459  "amountToBurn == 0" */ iszero(_1)
                    /// @src 70:13438:13495  "if (amountToBurn == 0) revert BinPool__BurnZeroAmount(id)"
                    {
                        /// @src 70:13468:13495  "BinPool__BurnZeroAmount(id)"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13468:13495  "BinPool__BurnZeroAmount(id)" */ 0xd411d00300000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13468:13495  "BinPool__BurnZeroAmount(id)" */ abi_encode_uint24_22074(expr_2))
                    }
                    /// @src 70:13532:13549  "self.reserveOfBin"
                    let _2 := add(var_self_56157_slot, 1)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _3 := sload(/** @src 70:13532:13553  "self.reserveOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_2, expr_2))
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _4 := sload(/** @src 70:13584:13603  "self.shareOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:13584:13599  "self.shareOfBin" */ add(var_self_56157_slot, 2), /** @src 70:13584:13603  "self.shareOfBin[id]" */ expr_2))
                    /// @src 70:13634:13645  "params.from"
                    let _5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 70:13634:13645  "params.from" */ var_params_56160_mpos))
                    /// @src 70:13664:13676  "amountToBurn"
                    fun_subShare(var_self_56157_slot, _5, expr_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:13651:13662  "params.salt" */ add(var_params_56160_mpos, 96)), /** @src 70:13664:13676  "amountToBurn" */ _1)
                    /// @src 70:13720:13771  "binReserves.getAmountOutOfBin(amountToBurn, supply)"
                    let expr_3 := fun_getAmountOutOfBin(_3, _1, _4)
                    /// @src 70:13786:13848  "if (amountsOutFromBin == 0) revert BinPool__ZeroAmountsOut(id)"
                    if /** @src 70:13790:13812  "amountsOutFromBin == 0" */ iszero(expr_3)
                    /// @src 70:13786:13848  "if (amountsOutFromBin == 0) revert BinPool__ZeroAmountsOut(id)"
                    {
                        /// @src 70:13821:13848  "BinPool__ZeroAmountsOut(id)"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13821:13848  "BinPool__ZeroAmountsOut(id)" */ 0xde6e950100000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:13821:13848  "BinPool__ZeroAmountsOut(id)" */ abi_encode_uint24_22074(expr_2))
                    }
                    /// @src 70:13877:13911  "binReserves.sub(amountsOutFromBin)"
                    let expr_4 := fun_sub(_3, expr_3)
                    /// @src 70:13926:13982  "if (supply == amountToBurn) _removeBinIdToTree(self, id)"
                    if /** @src 70:13930:13952  "supply == amountToBurn" */ eq(_4, _1)
                    /// @src 70:13926:13982  "if (supply == amountToBurn) _removeBinIdToTree(self, id)"
                    {
                        /// @src 70:13979:13981  "id"
                        fun_removeBinIdToTree(var_self_56157_slot, expr_2)
                    }
                    /// @src 55:1449:1456  "100_000"
                    sstore(/** @src 70:13997:14018  "self.reserveOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_2, expr_2), /** @src 55:1449:1456  "100_000" */ expr_4)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 70:14046:14076  "amounts[i] = amountsOutFromBin" */ memory_array_index_access_uint256_dyn(var_amounts_mpos, var_i), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ expr_3)
                    /// @src 70:14090:14136  "amountsOut = amountsOut.add(amountsOutFromBin)"
                    var_amountsOut := /** @src 70:14103:14136  "amountsOut.add(amountsOutFromBin)" */ fun_add_57825(var_amountsOut, expr_3)
                    /// @src 70:14179:14182  "++i"
                    var_i := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(/** @src 70:14179:14182  "++i" */ var_i, /** @src 70:13532:13549  "self.reserveOfBin" */ 1)
                }
                /// @src 70:14241:14274  "amountsOut.decodeX().safeInt128()"
                let expr_5 := fun_safeInt128(/** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 70:14241:14261  "amountsOut.decodeX()" */ var_amountsOut, /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455))
                /// @src 70:14217:14310  "result = toBalanceDelta(amountsOut.decodeX().safeInt128(), amountsOut.decodeY().safeInt128())"
                var_result := /** @src 70:14226:14310  "toBalanceDelta(amountsOut.decodeX().safeInt128(), amountsOut.decodeY().safeInt128())" */ fun_toBalanceDelta(expr_5, /** @src 70:14276:14309  "amountsOut.decodeY().safeInt128()" */ fun_safeInt128(/** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(128, /** @src 70:14276:14296  "amountsOut.decodeY()" */ var_amountsOut)))
            }
            /// @ast-id 54909 @src 69:4963:5766  "function afterBurn(..."
            function fun_afterBurn(var_key_54835_mpos, var_params_54838_mpos, var_delta, var_hookData_54843_offset, var_hookData_54843_length) -> var_callerDelta, var_hookDelta
            {
                /// @src 69:5171:5193  "BalanceDelta hookDelta"
                var_hookDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:5241:5250  "key.hooks" */ add(var_key_54835_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 69:5262:5281  "callerDelta = delta"
                var_callerDelta := var_delta
                /// @src 69:5296:5310  "key.parameters"
                let _1 := add(var_key_54835_mpos, 160)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := mload(/** @src 69:5296:5310  "key.parameters" */ _1)
                /// @src 69:5296:5353  "key.parameters.shouldCall(HOOKS_AFTER_BURN_OFFSET, hooks)"
                let var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 5, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ _2), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:5292:5760  "if (key.parameters.shouldCall(HOOKS_AFTER_BURN_OFFSET, hooks)) {..."
                if /** @src 69:5296:5353  "key.parameters.shouldCall(HOOKS_AFTER_BURN_OFFSET, hooks)" */ expr
                /// @src 69:5292:5760  "if (key.parameters.shouldCall(HOOKS_AFTER_BURN_OFFSET, hooks)) {..."
                {
                    /// @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))"
                    let expr_54890_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:5241:5250  "key.hooks" */ 64)
                    /// @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))"
                    mstore(add(expr_54890_mpos, 0x20), 0x5250df3900000000000000000000000000000000000000000000000000000000)
                    let headStart := add(expr_54890_mpos, 36)
                    let tail := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(headStart, and(/** @src 69:5531:5541  "msg.sender" */ caller(), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                    abi_encode_struct_PoolKey(/** @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))" */ var_key_54835_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(headStart, 32))
                    mstore(add(headStart, 224), 320)
                    let tail_1 := abi_encode_struct_BurnParams(/** @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))" */ var_params_54838_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(headStart, 320))
                    mstore(add(headStart, 256), /** @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))" */ var_delta)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(add(headStart, 288), sub(tail_1, headStart))
                    tail := abi_encode_bytes_calldata(/** @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))" */ var_hookData_54843_offset, var_hookData_54843_length, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ tail_1)
                    /// @src 69:5494:5573  "abi.encodeCall(IBinHooks.afterBurn, (msg.sender, key, params, delta, hookData))"
                    let _3 := sub(tail, expr_54890_mpos)
                    mstore(expr_54890_mpos, add(_3, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_54890_mpos, _3)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _4 := mload(/** @src 69:5595:5609  "key.parameters" */ _1)
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted := 13
                    /// @src 69:5369:5697  "hookDelta = BalanceDelta.wrap(..."
                    var_hookDelta := /** @src 69:5416:5683  "Hooks.callHookWithReturnDelta(..." */ fun_callHookWithReturnDelta(value, expr_54890_mpos, /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:5595:5665  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_BURN_RETURNS_DELTA_OFFSET)" */ _4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 13))
                    /// @src 69:5712:5749  "callerDelta = callerDelta - hookDelta"
                    var_callerDelta := /** @src 69:5726:5749  "callerDelta - hookDelta" */ fun_sub_67906(var_delta, var_hookDelta)
                }
            }
            /// @ast-id 56142 @src 70:12282:12580  "function getNextNonEmptyBin(State storage self, bool swapForY, uint24 id) internal view returns (uint24) {..."
            function fun_getNextNonEmptyBin(var_self_56109_slot, var_swapForY, var_id) -> var
            {
                /// @src 70:12404:12573  "swapForY..."
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 70:12404:12573  "swapForY..."
                switch var_swapForY
                case 0 {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _1 := sload(/** @src 70:12531:12542  "self.level0" */ add(var_self_56109_slot, 4))
                    /// @src 70:12404:12573  "swapForY..."
                    expr := /** @src 70:12508:12573  "TreeMath.findFirstLeft(self.level0, self.level1, self.level2, id)" */ fun_findFirstLeft(_1, /** @src 70:12544:12555  "self.level1" */ add(var_self_56109_slot, 5), /** @src 70:12557:12568  "self.level2" */ add(var_self_56109_slot, 6), /** @src 70:12508:12573  "TreeMath.findFirstLeft(self.level0, self.level1, self.level2, id)" */ var_id)
                }
                default /// @src 70:12404:12573  "swapForY..."
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _2 := sload(/** @src 70:12451:12462  "self.level0" */ add(var_self_56109_slot, 4))
                    /// @src 70:12404:12573  "swapForY..."
                    expr := /** @src 70:12427:12493  "TreeMath.findFirstRight(self.level0, self.level1, self.level2, id)" */ fun_findFirstRight(_2, /** @src 70:12464:12475  "self.level1" */ add(var_self_56109_slot, 5), /** @src 70:12477:12488  "self.level2" */ add(var_self_56109_slot, 6), /** @src 70:12427:12493  "TreeMath.findFirstRight(self.level0, self.level1, self.level2, id)" */ var_id)
                }
                /// @src 70:12397:12573  "return swapForY..."
                var := expr
            }
            /// @src 66:480:481  "2"
            function abi_encode_address_struct_PoolKey_struct_MintParams_calldata_bytes_calldata(headStart, value0, value1, value2, value3, value4) -> tail
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(headStart, and(value0, 0xffffffffffffffffffffffffffffffffffffffff))
                /// @src 66:480:481  "2"
                abi_encode_struct_PoolKey(value1, add(headStart, 32))
                mstore(add(headStart, 224), 288)
                let rel_offset_of_tail := calldataload(value2)
                if iszero(slt(rel_offset_of_tail, add(sub(calldatasize(), value2), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe1)))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src 66:480:481  "2" */ 0, 0)
                }
                let value := add(rel_offset_of_tail, value2)
                let length := calldataload(value)
                let value_1 := add(value, 32)
                if gt(length, 0xffffffffffffffff)
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src 66:480:481  "2" */ 0, 0)
                }
                let _1 := shl(5, length)
                if sgt(value_1, sub(calldatasize(), _1))
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src 66:480:481  "2" */ 0, 0)
                }
                mstore(add(headStart, 288), 0x60)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:480:481  "2" */ add(headStart, 384), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ length)
                /// @src 66:480:481  "2"
                if gt(length, 0x07ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    revert(/** @src 66:480:481  "2" */ 0, 0)
                }
                calldatacopy(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(/** @src 66:480:481  "2" */ headStart, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 416), /** @src 66:480:481  "2" */ value_1, _1)
                let _2 := add(headStart, _1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let value_2 := /** @src 66:480:481  "2" */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_2 := calldataload(/** @src 66:480:481  "2" */ add(value2, 32))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:480:481  "2" */ add(headStart, 320), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value_2)
                let value_3 := /** @src 66:480:481  "2" */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                value_3 := calldataload(/** @src 66:480:481  "2" */ add(value2, 0x40))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src 66:480:481  "2" */ add(headStart, 352), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value_3)
                /// @src 66:480:481  "2"
                mstore(add(headStart, 256), add(sub(_2, headStart), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 416))
                /// @src 66:480:481  "2"
                tail := abi_encode_bytes_calldata(value3, value4, add(_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 416))
            }
            /// @ast-id 54707 @src 69:2890:3756  "function beforeMint(PoolKey memory key, IBinPoolManager.MintParams calldata params, bytes calldata hookData)..."
            function fun_beforeMint(var_key_54639_mpos, var_params_offset, var_hookData_offset, var_hookData_54644_length) -> var_lpFeeOverride
            {
                /// @src 69:3033:3053  "uint24 lpFeeOverride"
                var_lpFeeOverride := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 69:3087:3116  "IBinHooks(address(key.hooks))"
                let expr_54658_address := extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 69:3097:3115  "address(key.hooks)" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(/** @src 55:1449:1456  "100_000" */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 69:3105:3114  "key.hooks" */ add(var_key_54639_mpos, 64)))))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := mload(/** @src 69:3132:3146  "key.parameters" */ add(var_key_54639_mpos, 160))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := and(/** @src 69:3132:3190  "key.parameters.shouldCall(HOOKS_BEFORE_MINT_OFFSET, hooks)" */ expr_54658_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 69:3127:3237  "if (!key.parameters.shouldCall(HOOKS_BEFORE_MINT_OFFSET, hooks)) {..."
                if /** @src 69:3131:3190  "!key.parameters.shouldCall(HOOKS_BEFORE_MINT_OFFSET, hooks)" */ cleanup_bool(iszero(/** @src 69:3132:3190  "key.parameters.shouldCall(HOOKS_BEFORE_MINT_OFFSET, hooks)" */ fun_shouldCall_22078(_1, _2)))
                /// @src 69:3127:3237  "if (!key.parameters.shouldCall(HOOKS_BEFORE_MINT_OFFSET, hooks)) {..."
                {
                    /// @src 69:3206:3226  "return lpFeeOverride"
                    var_lpFeeOverride := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 69:3206:3226  "return lpFeeOverride"
                    leave
                }
                /// @src 69:3303:3376  "abi.encodeCall(IBinHooks.beforeMint, (msg.sender, key, params, hookData))"
                let expr_54686_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:3105:3114  "key.hooks" */ 64)
                /// @src 69:3303:3376  "abi.encodeCall(IBinHooks.beforeMint, (msg.sender, key, params, hookData))"
                mstore(add(expr_54686_mpos, 0x20), 0x0925078200000000000000000000000000000000000000000000000000000000)
                let _3 := sub(abi_encode_address_struct_PoolKey_struct_MintParams_calldata_bytes_calldata(add(expr_54686_mpos, 36), /** @src 69:3341:3351  "msg.sender" */ caller(), /** @src 69:3303:3376  "abi.encodeCall(IBinHooks.beforeMint, (msg.sender, key, params, hookData))" */ var_key_54639_mpos, var_params_offset, var_hookData_offset, var_hookData_54644_length), expr_54686_mpos)
                mstore(expr_54686_mpos, add(_3, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                finalize_allocation(expr_54686_mpos, _3)
                /// @src 69:3281:3377  "Hooks.callHook(hooks, abi.encodeCall(IBinHooks.beforeMint, (msg.sender, key, params, hookData)))"
                let expr_54687_mpos := fun_callHook(_2, expr_54686_mpos)
                /// @src 69:3466:3525  "if (result.length != 64) revert Hooks.InvalidHookResponse()"
                if /** @src 69:3470:3489  "result.length != 64" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:3470:3483  "result.length" */ expr_54687_mpos), /** @src 69:3105:3114  "key.hooks" */ 64))
                /// @src 69:3466:3525  "if (result.length != 64) revert Hooks.InvalidHookResponse()"
                {
                    /// @src 69:3498:3525  "Hooks.InvalidHookResponse()"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:3498:3525  "Hooks.InvalidHookResponse()" */ 0x1e048e1d00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 69:3303:3376  "abi.encodeCall(IBinHooks.beforeMint, (msg.sender, key, params, hookData))" */ 4)
                }
                /// @src 69:3536:3750  "if (key.fee.isDynamicLPFee()) {..."
                if /** @src 69:3540:3564  "key.fee.isDynamicLPFee()" */ fun_isDynamicLPFee(/** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 69:3540:3547  "key.fee" */ add(var_key_54639_mpos, 128))))
                /// @src 69:3536:3750  "if (key.fee.isDynamicLPFee()) {..."
                {
                    /// @src 69:3658:3740  "assembly {..."
                    var_lpFeeOverride := mload(add(expr_54687_mpos, /** @src 69:3105:3114  "key.hooks" */ 64))
                }
            }
            /// @ast-id 56053 @src 70:10283:11309  "function mint(State storage self, MintParams memory params)..."
            function fun_mint(var_self_slot, var_params_55957_mpos) -> var_result, var_feeAmountToProtocol, var_arrays_mpos, var_compositionFeeAmount
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                pop(allocate_and_zero_memory_struct_struct_MintArrays())
                /// @src 70:10559:10582  "params.liquidityConfigs"
                let _1 := add(var_params_55957_mpos, 96)
                /// @src 70:10555:10635  "if (params.liquidityConfigs.length == 0) revert BinPool__EmptyLiquidityConfigs()"
                if /** @src 70:10559:10594  "params.liquidityConfigs.length == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:10559:10582  "params.liquidityConfigs" */ mload(_1)))
                /// @src 70:10555:10635  "if (params.liquidityConfigs.length == 0) revert BinPool__EmptyLiquidityConfigs()"
                {
                    /// @src 70:10603:10635  "BinPool__EmptyLiquidityConfigs()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 70:10603:10635  "BinPool__EmptyLiquidityConfigs()" */ 0x9537344800000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 70:10603:10635  "BinPool__EmptyLiquidityConfigs()" */ 4)
                }
                /// @src 70:10685:10730  "new uint256[](params.liquidityConfigs.length)"
                let expr_55987_mpos := allocate_and_zero_memory_array_array_bytes32_dyn(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:10699:10722  "params.liquidityConfigs" */ mload(_1)))
                /// @src 70:10753:10798  "new bytes32[](params.liquidityConfigs.length)"
                let expr_55994_mpos := allocate_and_zero_memory_array_array_bytes32_dyn(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:10767:10790  "params.liquidityConfigs" */ mload(_1)))
                /// @src 70:10829:10874  "new uint256[](params.liquidityConfigs.length)"
                let expr_56001_mpos := allocate_and_zero_memory_array_array_bytes32_dyn(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:10843:10866  "params.liquidityConfigs" */ mload(_1)))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let memPtr := mload(64)
                finalize_allocation_21959(memPtr)
                mstore(memPtr, expr_55987_mpos)
                /// @src 70:10655:10885  "MintArrays({..."
                let _2 := add(memPtr, 32)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(_2, expr_55994_mpos)
                /// @src 70:10655:10885  "MintArrays({..."
                let _3 := add(memPtr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 64)
                mstore(_3, expr_56001_mpos)
                /// @src 70:10646:10885  "arrays = MintArrays({..."
                var_arrays_mpos := memPtr
                /// @src 70:10957:10988  "_mintBins(self, params, arrays)"
                let var_amountsLeft := /** @src -1:-1:-1 */ 0
                /// @src 70:10957:10988  "_mintBins(self, params, arrays)"
                let var_feeAmountToProtocol_1 := /** @src -1:-1:-1 */ 0
                /// @src 70:10957:10988  "_mintBins(self, params, arrays)"
                let var_compositionFeeAmount_1 := /** @src -1:-1:-1 */ 0
                /// @src 70:15718:15745  "bytes32 feeAmountToProtocol"
                var_feeAmountToProtocol_1 := /** @src -1:-1:-1 */ 0
                /// @src 70:15747:15775  "bytes32 compositionFeeAmount"
                var_compositionFeeAmount_1 := /** @src -1:-1:-1 */ 0
                /// @src 70:15805:15820  "params.amountIn"
                let _4 := add(var_params_55957_mpos, 128)
                /// @src 70:15791:15820  "amountsLeft = params.amountIn"
                var_amountsLeft := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:15805:15820  "params.amountIn" */ _4)
                /// @src 70:16000:16009  "uint256 i"
                let var_i := /** @src -1:-1:-1 */ 0
                /// @src 70:16000:16009  "uint256 i"
                var_i := /** @src -1:-1:-1 */ 0
                /// @src 70:16710:16721  "params.salt"
                let _5 := add(var_params_55957_mpos, 160)
                /// @src 70:15995:16882  "for (uint256 i; i < params.liquidityConfigs.length;) {..."
                for { }
                /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 1
                /// @src 70:16000:16009  "uint256 i"
                { }
                {
                    /// @src 70:16015:16038  "params.liquidityConfigs"
                    let _mpos := mload(_1)
                    /// @src 70:16011:16045  "i < params.liquidityConfigs.length"
                    if iszero(lt(var_i, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:16015:16045  "params.liquidityConfigs.length" */ _mpos)))
                    /// @src 70:16011:16045  "i < params.liquidityConfigs.length"
                    { break }
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _6 := mload(/** @src 70:16183:16209  "params.liquidityConfigs[i]" */ memory_array_index_access_uint256_dyn(_mpos, var_i))
                    /// @src 70:16183:16242  "params.liquidityConfigs[i].getAmountsAndId(params.amountIn)"
                    let expr_component, expr_component_1 := fun_getAmountsAndId(_6, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:16226:16241  "params.amountIn" */ _4))
                    /// @src 70:16349:16396  "_updateBin(self, params, id, maxAmountsInToBin)"
                    let expr_component_2, expr_component_3, expr_component_4, expr_component_5, expr_component_6 := fun_updateBin(var_self_slot, var_params_55957_mpos, expr_component_1, expr_component)
                    /// @src 70:16425:16465  "amountsLeft = amountsLeft.sub(amountsIn)"
                    var_amountsLeft := /** @src 70:16439:16465  "amountsLeft.sub(amountsIn)" */ fun_sub(var_amountsLeft, expr_component_3)
                    /// @src 70:16479:16535  "feeAmountToProtocol = feeAmountToProtocol.add(binFeeAmt)"
                    var_feeAmountToProtocol_1 := /** @src 70:16501:16535  "feeAmountToProtocol.add(binFeeAmt)" */ fun_add_57825(var_feeAmountToProtocol_1, expr_component_5)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 70:16550:16568  "arrays.ids[i] = id" */ memory_array_index_access_uint256_dyn(/** @src 70:16550:16560  "arrays.ids" */ mload(memPtr), /** @src 70:16550:16568  "arrays.ids[i] = id" */ var_i), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 70:16550:16568  "arrays.ids[i] = id" */ expr_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                    mstore(/** @src 70:16582:16616  "arrays.amounts[i] = amountsInToBin" */ memory_array_index_access_uint256_dyn(/** @src 70:16582:16596  "arrays.amounts" */ mload(_2), /** @src 70:16582:16616  "arrays.amounts[i] = amountsInToBin" */ var_i), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ expr_component_4)
                    mstore(/** @src 70:16630:16664  "arrays.liquidityMinted[i] = shares" */ memory_array_index_access_uint256_dyn(/** @src 70:16630:16652  "arrays.liquidityMinted" */ mload(_3), /** @src 70:16630:16664  "arrays.liquidityMinted[i] = shares" */ var_i), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ expr_component_2)
                    /// @src 70:16695:16704  "params.to"
                    let _7 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ extract_from_storage_value_offsett_userDefinedValueType_Currency(mload(/** @src 70:16695:16704  "params.to" */ var_params_55957_mpos))
                    /// @src 70:16723:16729  "shares"
                    fun_addShare(var_self_slot, _7, expr_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:16710:16721  "params.salt" */ _5), /** @src 70:16723:16729  "shares" */ expr_component_2)
                    /// @src 70:16745:16811  "compositionFeeAmount = compositionFeeAmount.add(binCompositionFee)"
                    var_compositionFeeAmount_1 := /** @src 70:16768:16811  "compositionFeeAmount.add(binCompositionFee)" */ fun_add_57825(var_compositionFeeAmount_1, expr_component_6)
                    /// @src 70:16854:16857  "++i"
                    var_i := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(/** @src 70:16854:16857  "++i" */ var_i, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 1)
                }
                /// @src 70:10998:11026  "feeAmountToProtocol = feeAmt"
                var_feeAmountToProtocol := var_feeAmountToProtocol_1
                /// @src 70:11036:11070  "compositionFeeAmount = compoFeeAmt"
                var_compositionFeeAmount := var_compositionFeeAmount_1
                /// @src 70:11108:11149  "params.amountIn.sub(amountsLeft).decode()"
                let expr_56035_component, expr_56035_component_1 := fun_decode_57749(/** @src 70:11108:11140  "params.amountIn.sub(amountsLeft)" */ fun_sub(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 70:11108:11123  "params.amountIn" */ _4), /** @src 70:11108:11140  "params.amountIn.sub(amountsLeft)" */ var_amountsLeft))
                /// @src 70:11263:11281  "-(x1.safeInt128())"
                let expr := negate_int128(/** @src 70:11265:11280  "x1.safeInt128()" */ fun_safeInt128(expr_56035_component))
                /// @src 70:11239:11302  "result = toBalanceDelta(-(x1.safeInt128()), -(x2.safeInt128()))"
                var_result := /** @src 70:11248:11302  "toBalanceDelta(-(x1.safeInt128()), -(x2.safeInt128()))" */ fun_toBalanceDelta(expr, /** @src 70:11283:11301  "-(x2.safeInt128())" */ negate_int128(/** @src 70:11285:11300  "x2.safeInt128()" */ fun_safeInt128(expr_56035_component_1)))
            }
            /// @ast-id 54784 @src 69:3762:4565  "function afterMint(..."
            function fun_afterMint(var_key_54710_mpos, var_params_54713_mpos, var_delta, var_hookData_54718_offset, var_hookData_54718_length) -> var_callerDelta, var_hookDelta
            {
                /// @src 69:3970:3992  "BalanceDelta hookDelta"
                var_hookDelta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                let value := and(/** @src 55:1449:1456  "100_000" */ mload(/** @src 69:4040:4049  "key.hooks" */ add(var_key_54710_mpos, 64)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff)
                /// @src 69:4061:4080  "callerDelta = delta"
                var_callerDelta := var_delta
                /// @src 69:4095:4109  "key.parameters"
                let _1 := add(var_key_54710_mpos, 160)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := mload(/** @src 69:4095:4109  "key.parameters" */ _1)
                /// @src 69:4095:4152  "key.parameters.shouldCall(HOOKS_AFTER_MINT_OFFSET, hooks)"
                let var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 3, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ _2), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value, /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
                /// @src 69:4091:4559  "if (key.parameters.shouldCall(HOOKS_AFTER_MINT_OFFSET, hooks)) {..."
                if /** @src 69:4095:4152  "key.parameters.shouldCall(HOOKS_AFTER_MINT_OFFSET, hooks)" */ expr
                /// @src 69:4091:4559  "if (key.parameters.shouldCall(HOOKS_AFTER_MINT_OFFSET, hooks)) {..."
                {
                    /// @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))"
                    let expr_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 69:4040:4049  "key.hooks" */ 64)
                    /// @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))"
                    mstore(add(expr_mpos, 0x20), 0x081e1a8c00000000000000000000000000000000000000000000000000000000)
                    let headStart := add(expr_mpos, 36)
                    let tail := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(headStart, and(/** @src 69:4330:4340  "msg.sender" */ caller(), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                    abi_encode_struct_PoolKey(/** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_key_54710_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(headStart, 32))
                    mstore(add(headStart, 224), 320)
                    let memberValue0 := mload(/** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_params_54713_mpos)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(add(headStart, 320), 0x60)
                    let tail_1 := abi_encode_array_bytes32_dyn(memberValue0, add(headStart, 416))
                    mstore(add(headStart, 352), mload(add(/** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_params_54713_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 32)))
                    mstore(add(headStart, 384), mload(add(/** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_params_54713_mpos, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)))
                    mstore(add(headStart, 256), /** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_delta)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(add(headStart, 288), sub(tail_1, headStart))
                    tail := abi_encode_bytes_calldata(/** @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))" */ var_hookData_54718_offset, var_hookData_54718_length, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ tail_1)
                    /// @src 69:4293:4372  "abi.encodeCall(IBinHooks.afterMint, (msg.sender, key, params, delta, hookData))"
                    let _3 := sub(tail, expr_mpos)
                    mstore(expr_mpos, add(_3, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0))
                    finalize_allocation(expr_mpos, _3)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let _4 := mload(/** @src 69:4394:4408  "key.parameters" */ _1)
                    /// @src 54:2656:2685  "parameters.decodeBool(offset)"
                    let converted := /** @src -1:-1:-1 */ 0
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    converted := 12
                    /// @src 69:4168:4496  "hookDelta = BalanceDelta.wrap(..."
                    var_hookDelta := /** @src 69:4215:4482  "Hooks.callHookWithReturnDelta(..." */ fun_callHookWithReturnDelta(value, expr_mpos, /** @src 54:2656:2685  "parameters.decodeBool(offset)" */ fun_decodeBool(/** @src 69:4394:4464  "key.parameters.hasOffsetEnabled(HOOKS_AFTER_MINT_RETURNS_DELTA_OFFSET)" */ _4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 12))
                    /// @src 69:4511:4548  "callerDelta = callerDelta - hookDelta"
                    var_callerDelta := /** @src 69:4525:4548  "callerDelta - hookDelta" */ fun_sub_67906(var_delta, var_hookDelta)
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function convert_uint8_to_uint256(value) -> converted
            { converted := and(value, 0xff) }
            /// @ast-id 50830 @src 54:2888:3075  "function shouldCall(bytes32 parameters, uint8 offset, IHooks hook) internal view returns (bool) {..."
            function fun_shouldCall_22068(var_parameters, var_hook_address) -> var
            {
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 6, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ var_parameters), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:3041:3054  "address(hook)" */ var_hook_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
            }
            /// @ast-id 50830 @src 54:2888:3075  "function shouldCall(bytes32 parameters, uint8 offset, IHooks hook) internal view returns (bool) {..."
            function fun_shouldCall(var_parameters, var_hook_address) -> var
            {
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 7, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ var_parameters), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:3041:3054  "address(hook)" */ var_hook_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
            }
            /// @ast-id 50830 @src 54:2888:3075  "function shouldCall(bytes32 parameters, uint8 offset, IHooks hook) internal view returns (bool) {..."
            function fun_shouldCall_22078(var_parameters, var_hook_address) -> var
            {
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                let expr := /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 2, /** @src 54:3001:3037  "hasOffsetEnabled(parameters, offset)" */ var_parameters), /** @src 61:2443:2540  "assembly (\"memory-safe\") {..." */ 1)
                /// @src 54:3001:3068  "hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                if expr
                {
                    expr := /** @src 54:3041:3068  "address(hook) != msg.sender" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:3041:3054  "address(hook)" */ var_hook_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff), /** @src 54:3058:3068  "msg.sender" */ caller()))
                }
                /// @src 54:2994:3068  "return hasOffsetEnabled(parameters, offset) && address(hook) != msg.sender"
                var := expr
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function cleanup_bytes4(value) -> cleaned
            {
                cleaned := and(value, 0xffffffff00000000000000000000000000000000000000000000000000000000)
            }
            /// @ast-id 50878 @src 54:3250:4491  "function callHook(IHooks self, bytes memory data) internal returns (bytes memory result) {..."
            function fun_callHook(var_self_50834_address, var_data_mpos) -> var_result_mpos
            {
                /// @src 54:3371:3487  "assembly (\"memory-safe\") {..."
                let _1 := mload(var_data_mpos)
                let _2 := add(var_data_mpos, 0x20)
                /// @src 54:3577:3657  "if (!success) Wrap__FailedHookCall.selector.bubbleUpAndRevertWith(address(self))"
                if /** @src 54:3581:3589  "!success" */ cleanup_bool(iszero(/** @src 54:3371:3487  "assembly (\"memory-safe\") {..." */ call(gas(), var_self_50834_address, /** @src -1:-1:-1 */ 0, /** @src 54:3371:3487  "assembly (\"memory-safe\") {..." */ _2, _1, /** @src -1:-1:-1 */ 0, 0)))
                /// @src 54:3577:3657  "if (!success) Wrap__FailedHookCall.selector.bubbleUpAndRevertWith(address(self))"
                {
                    /// @src 54:3643:3656  "address(self)"
                    fun_bubbleUpAndRevertWith(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:3643:3656  "address(self)" */ var_self_50834_address, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffff))
                }
                /// @src 54:3728:4232  "assembly (\"memory-safe\") {..."
                var_result_mpos := mload(0x40)
                mstore(0x40, add(var_result_mpos, and(add(returndatasize(), 0x3f), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)))
                mstore(var_result_mpos, returndatasize())
                let _3 := returndatasize()
                let _4 := add(var_result_mpos, /** @src 54:3371:3487  "assembly (\"memory-safe\") {..." */ 0x20)
                /// @src 54:3728:4232  "assembly (\"memory-safe\") {..."
                returndatacopy(_4, /** @src -1:-1:-1 */ 0, /** @src 54:3728:4232  "assembly (\"memory-safe\") {..." */ _3)
                /// @src 54:4362:4430  "result.length < 32 || result.parseSelector() != data.parseSelector()"
                let expr := /** @src 54:4362:4380  "result.length < 32" */ lt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 54:4362:4375  "result.length" */ var_result_mpos), /** @src 54:3371:3487  "assembly (\"memory-safe\") {..." */ 0x20)
                /// @src 54:4362:4430  "result.length < 32 || result.parseSelector() != data.parseSelector()"
                if iszero(expr)
                {
                    /// @src 54:4384:4406  "result.parseSelector()"
                    let expr_1 := /** @src 56:609:694  "assembly (\"memory-safe\") {..." */ mload(_4)
                    /// @src 54:4362:4430  "result.length < 32 || result.parseSelector() != data.parseSelector()"
                    expr := /** @src 54:4384:4430  "result.parseSelector() != data.parseSelector()" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 54:4384:4430  "result.parseSelector() != data.parseSelector()" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffff00000000000000000000000000000000000000000000000000000000), /** @src 54:4384:4430  "result.parseSelector() != data.parseSelector()" */ cleanup_bytes4(/** @src 56:609:694  "assembly (\"memory-safe\") {..." */ mload(_2))))
                }
                /// @src 54:4358:4485  "if (result.length < 32 || result.parseSelector() != data.parseSelector()) {..."
                if expr
                {
                    /// @src 54:4453:4474  "InvalidHookResponse()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 54:4453:4474  "InvalidHookResponse()" */ 0x1e048e1d00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 54:4453:4474  "InvalidHookResponse()" */ 4)
                }
            }
            /// @src 52:205:211  "10_000"
            function panic_error_0x12()
            {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x12)
                revert(0, 0x24)
            }
            function checked_div_uint256_22106(y) -> r
            {
                if iszero(y) { panic_error_0x12() }
                r := div(/** @src 81:7675:7692  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, /** @src 52:205:211  "10_000" */ y)
            }
            function checked_div_uint256(x, y) -> r
            {
                if iszero(y) { panic_error_0x12() }
                r := div(x, y)
            }
            /// @ast-id 50669 @src 52:432:635  "function calculatePortion(uint256 amount, uint256 bips) internal pure returns (uint256) {..."
            function fun_calculatePortion(var_amount) -> var
            {
                /// @src 52:534:556  "bips > BPS_DENOMINATOR"
                let _1 := 0
                /// @src 52:530:578  "if (bips > BPS_DENOMINATOR) revert InvalidBips()"
                _1 := /** @src 52:534:556  "bips > BPS_DENOMINATOR" */ 0
                /// @src 52:205:211  "10_000"
                let product := mul(var_amount, /** @src 36:1214:1217  "100" */ 0x64)
                /// @src 52:205:211  "10_000"
                if iszero(or(iszero(var_amount), eq(/** @src 36:1214:1217  "100" */ 0x64, /** @src 52:205:211  "10_000" */ div(product, var_amount)))) { panic_error_0x11() }
                /// @src 52:588:628  "return (amount * bips) / BPS_DENOMINATOR"
                var := /** @src 52:205:211  "10_000" */ div(product, 0x2710)
            }
            /// @ast-id 57749 @src 78:2656:2850  "function decode(bytes32 z) internal pure returns (uint128 x1, uint128 x2) {..."
            function fun_decode_57749(var_z) -> var_x1, var_x2
            {
                /// @src 78:2740:2844  "assembly (\"memory-safe\") {..."
                var_x1 := and(var_z, 340282366920938463463374607431768211455)
                var_x2 := shr(128, var_z)
            }
            /// @ast-id 57272 @src 75:764:981  "function getPriceFromId(uint24 id, uint16 binStep) internal pure returns (uint256 price) {..."
            function fun_getPriceFromId(var_id, var_binStep) -> var_price
            {
                /// @src 75:1732:1747  "Constants.SCALE"
                let ret := /** @src -1:-1:-1 */ 0
                /// @src 73:251:268  "1 << SCALE_OFFSET"
                ret := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000
                /// @src 75:948:974  "price = base.pow(exponent)"
                var_price := /** @src 75:956:974  "base.pow(exponent)" */ fun_pow(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(ret, /** @src 52:205:211  "10_000" */ div(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(shl(/** @src 73:208:211  "128" */ 0x80, /** @src 75:1751:1767  "uint256(binStep)" */ var_binStep), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff00000000000000000000000000000000), /** @src 52:205:211  "10_000" */ 0x2710)), /** @src 75:555:562  "1 << 23" */ add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 75:2099:2110  "uint256(id)" */ var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), /** @src 75:555:562  "1 << 23" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffff800000))
            }
            /// @ast-id 53867 @src 68:4573:4769  "function getLiquidity(bytes32 amounts, uint256 price) internal pure returns (uint256 liquidity) {..."
            function fun_getLiquidity_53867(var_amounts, var_price) -> var_liquidity
            {
                /// @src 68:4730:4762  "return getLiquidity(x, y, price)"
                var_liquidity := /** @src 68:4737:4762  "getLiquidity(x, y, price)" */ fun_getLiquidity(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ and(var_amounts, 340282366920938463463374607431768211455), shr(128, var_amounts), /** @src 68:4737:4762  "getLiquidity(x, y, price)" */ var_price)
            }
            /// @ast-id 57697 @src 78:1021:1203  "function encode(uint128 x1, uint128 x2) internal pure returns (bytes32 z) {..."
            function fun_encode(var_x1, var_x2) -> var_z
            {
                /// @src 78:1105:1197  "assembly (\"memory-safe\") {..."
                var_z := or(and(var_x1, 340282366920938463463374607431768211455), shl(128, var_x2))
            }
            /// @ast-id 57825 @src 78:4464:4742  "function add(bytes32 x, bytes32 y) internal pure returns (bytes32 z) {..."
            function fun_add_57825(var_x, var_y) -> var_z
            {
                /// @src 78:4543:4606  "assembly (\"memory-safe\") {..."
                var_z := add(var_x, var_y)
                /// @src 78:4620:4670  "z < x || uint128(uint256(z)) < uint128(uint256(x))"
                let expr := /** @src 78:4620:4625  "z < x" */ lt(var_z, var_x)
                /// @src 78:4620:4670  "z < x || uint128(uint256(z)) < uint128(uint256(x))"
                if iszero(expr)
                {
                    expr := /** @src 78:4629:4670  "uint128(uint256(z)) < uint128(uint256(x))" */ lt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 78:4637:4647  "uint256(z)" */ var_z, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 78:4659:4669  "uint256(x)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                }
                /// @src 78:4616:4736  "if (z < x || uint128(uint256(z)) < uint128(uint256(x))) {..."
                if expr
                {
                    /// @src 78:4693:4725  "PackedUint128Math__AddOverflow()"
                    mstore(0, 0x16692de900000000000000000000000000000000000000000000000000000000)
                    revert(0, 4)
                }
            }
            /// @ast-id 58789 @src 79:9348:9504  "function safeInt128(uint128 x) internal pure returns (int128 y) {..."
            function fun_safeInt128(var_x) -> var_y
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 79:9426:9455  "x > uint128(type(int128).max)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 79:9422:9474  "if (x > uint128(type(int128).max)) _revertOverflow()"
                if /** @src 79:9426:9455  "x > uint128(type(int128).max)" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, /** @src 79:9438:9454  "type(int128).max" */ 0x7fffffffffffffffffffffffffffffff)
                /// @src 79:9422:9474  "if (x > uint128(type(int128).max)) _revertOverflow()"
                {
                    /// @src 79:300:515  "assembly (\"memory-safe\") {..."
                    mstore(0x00, 0x93dafdf1)
                    revert(0x1c, 0x04)
                }
                /// @src 79:9484:9497  "y = int128(x)"
                var_y := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, _1)
            }
            /// @ast-id 67848 @src 108:448:670  "function toBalanceDelta(int128 _amount0, int128 _amount1) pure returns (BalanceDelta balanceDelta) {..."
            function fun_toBalanceDelta(var_amount0, var_amount1) -> var_balanceDelta
            {
                /// @src 108:553:668  "assembly (\"memory-safe\") {..."
                var_balanceDelta := or(shl(128, var_amount0), and(0xffffffffffffffffffffffffffffffff, var_amount1))
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function shift_right_uint24_uint8(value) -> result
            {
                result := and(shr(12, value), 4095)
            }
            /// @ast-id 51133 @src 57:1207:1319  "function getOneForZeroFee(uint24 self) internal pure returns (uint16) {..."
            function fun_getOneForZeroFee(var_self) -> var
            {
                /// @src 57:1301:1311  "self >> 12"
                let result := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                result := and(shr(12, /** @src 57:1301:1311  "self >> 12" */ var_self), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 4095)
                /// @src 57:1287:1312  "return uint16(self >> 12)"
                var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 57:1301:1311  "self >> 12" */ result, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)
            }
            /// @ast-id 51117 @src 57:879:993  "function getZeroForOneFee(uint24 self) internal pure returns (uint16) {..."
            function fun_getZeroForOneFee(var_self) -> var
            {
                /// @src 57:959:986  "return uint16(self & 0xfff)"
                var := /** @src 57:973:985  "self & 0xfff" */ and(var_self, /** @src 57:980:985  "0xfff" */ 0x0fff)
            }
            /// @ast-id 51011 @src 55:2854:2969  "function isOverride(uint24 self) internal pure returns (bool) {..."
            function fun_isOverride(var_self) -> var
            {
                /// @src 55:2926:2962  "return self & OVERRIDE_FEE_FLAG != 0"
                var := /** @src 55:2933:2962  "self & OVERRIDE_FEE_FLAG != 0" */ iszero(iszero(/** @src 55:2933:2957  "self & OVERRIDE_FEE_FLAG" */ and(var_self, /** @src 55:1167:1175  "0x400000" */ 0x400000)))
            }
            /// @ast-id 51049 @src 55:3583:3782  "function removeOverrideAndValidate(uint24 self, uint24 maxFee) internal pure returns (uint24) {..."
            function fun_removeOverrideAndValidate(var_self) -> var
            {
                /// @src 55:3700:3725  "self.removeOverrideFlag()"
                let expr := /** @src 55:3244:3264  "self & OVERRIDE_MASK" */ and(/** @src 55:3700:3725  "self.removeOverrideFlag()" */ var_self, /** @src 55:765:773  "0xBFFFFF" */ 0xbfffff)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(/** @src 55:3748:3754  "maxFee" */ expr, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 55:2020:2065  "if (self > maxFee) revert LPFeeTooLarge(self)"
                if /** @src 55:2024:2037  "self > maxFee" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, and(100000, 0xffffff))
                /// @src 55:2020:2065  "if (self > maxFee) revert LPFeeTooLarge(self)"
                {
                    /// @src 55:2046:2065  "LPFeeTooLarge(self)"
                    mstore(0, 0x1400211300000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 55:2046:2065  "LPFeeTooLarge(self)" */ 4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                    /// @src 55:2046:2065  "LPFeeTooLarge(self)"
                    revert(0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 36)
                }
                /// @src 55:3765:3775  "return fee"
                var := expr
            }
            /// @ast-id 51155 @src 57:2456:2897  "function calculateSwapFee(uint16 self, uint24 lpFee) internal pure returns (uint24 swapFee) {..."
            function fun_calculateSwapFee(var_self, var_lpFee) -> var_swapFee
            {
                /// @src 57:2558:2891  "assembly (\"memory-safe\") {..."
                let var_self_1 := and(var_self, 0xfff)
                let var_lpFee_1 := and(var_lpFee, 0xffffff)
                let usr$numerator := mul(var_self_1, var_lpFee_1)
                var_swapFee := sub(add(var_self_1, var_lpFee_1), add(div(usr$numerator, 1000000), iszero(iszero(mod(usr$numerator, 1000000)))))
            }
            /// @ast-id 57717 @src 78:1775:1928  "function encodeSecond(uint128 x2) internal pure returns (bytes32 z) {..."
            function fun_encodeSecond(var_x2) -> var_z
            {
                /// @src 78:1853:1922  "assembly (\"memory-safe\") {..."
                var_z := shl(128, var_x2)
            }
            /// @ast-id 54111 @src 68:9286:9448  "function isEmpty(bytes32 binReserves, bool isX) internal pure returns (bool) {..."
            function fun_isEmpty(var_binReserves, var_isX) -> var
            {
                /// @src 68:9380:9441  "isX ? binReserves.decodeX() == 0 : binReserves.decodeY() == 0"
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 68:9380:9441  "isX ? binReserves.decodeX() == 0 : binReserves.decodeY() == 0"
                switch var_isX
                case 0 {
                    expr := /** @src 68:9415:9441  "binReserves.decodeY() == 0" */ iszero(/** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(128, /** @src 68:9415:9436  "binReserves.decodeY()" */ var_binReserves))
                }
                default /// @src 68:9380:9441  "isX ? binReserves.decodeX() == 0 : binReserves.decodeY() == 0"
                {
                    expr := /** @src 68:9386:9412  "binReserves.decodeX() == 0" */ iszero(/** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 68:9386:9407  "binReserves.decodeX()" */ var_binReserves, /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455))
                }
                /// @src 68:9373:9441  "return isX ? binReserves.decodeX() == 0 : binReserves.decodeY() == 0"
                var := expr
            }
            /// @src 73:208:211  "128"
            function checked_add_uint128(x, y) -> sum
            {
                sum := add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 73:208:211  "128" */ x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 73:208:211  "128" */ y, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                /// @src 73:208:211  "128"
                if gt(sum, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 73:208:211  "128"
                { panic_error_0x11() }
            }
            /// @ast-id 54234 @src 68:10210:11501  "function getAmountsIn(..."
            function fun_getAmountsIn(var_binReserves, var_fee, var_binStep, var_swapForY, var_activeId, var_amountsOutLeft) -> var_amountsInWithFees, var_amountsOutOfBin, var_totalFees
            {
                /// @src 68:10511:10543  "activeId.getPriceFromId(binStep)"
                let expr := fun_getPriceFromId(var_activeId, var_binStep)
                /// @src 68:10596:10605  "!swapForY"
                let _1 := iszero(var_swapForY)
                /// @src 68:10577:10606  "binReserves.decode(!swapForY)"
                let expr_1 := fun_decode(var_binReserves, _1)
                /// @src 68:10643:10675  "amountsOutLeft.decode(!swapForY)"
                let expr_2 := fun_decode(var_amountsOutLeft, _1)
                /// @src 68:10803:10870  "binReserveOut > amountOutLeft128 ? amountOutLeft128 : binReserveOut"
                let expr_3 := /** @src -1:-1:-1 */ 0
                /// @src 68:10803:10870  "binReserveOut > amountOutLeft128 ? amountOutLeft128 : binReserveOut"
                switch /** @src 68:10803:10835  "binReserveOut > amountOutLeft128" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:10803:10835  "binReserveOut > amountOutLeft128" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:10803:10835  "binReserveOut > amountOutLeft128" */ expr_2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                case /** @src 68:10803:10870  "binReserveOut > amountOutLeft128 ? amountOutLeft128 : binReserveOut" */ 0 { expr_3 := expr_1 }
                default { expr_3 := expr_2 }
                /// @src 68:10910:11108  "swapForY..."
                let expr_4 := /** @src -1:-1:-1 */ 0
                /// @src 68:10910:11108  "swapForY..."
                switch var_swapForY
                case 0 {
                    expr_4 := /** @src 68:11028:11108  "uint256(amountOutOfBin).mulShiftRoundUp(price, Constants.SCALE_OFFSET).safe128()" */ fun_safe128(/** @src 68:11028:11098  "uint256(amountOutOfBin).mulShiftRoundUp(price, Constants.SCALE_OFFSET)" */ fun_mulShiftRoundUp(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:11028:11051  "uint256(amountOutOfBin)" */ expr_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 68:11028:11098  "uint256(amountOutOfBin).mulShiftRoundUp(price, Constants.SCALE_OFFSET)" */ expr))
                }
                default /// @src 68:10910:11108  "swapForY..."
                {
                    expr_4 := /** @src 68:10933:11013  "uint256(amountOutOfBin).shiftDivRoundUp(Constants.SCALE_OFFSET, price).safe128()" */ fun_safe128(/** @src 68:10933:11003  "uint256(amountOutOfBin).shiftDivRoundUp(Constants.SCALE_OFFSET, price)" */ fun_shiftDivRoundUp(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:10933:10956  "uint256(amountOutOfBin)" */ expr_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 68:10933:11003  "uint256(amountOutOfBin).shiftDivRoundUp(Constants.SCALE_OFFSET, price)" */ expr))
                }
                /// @src 68:11139:11175  "amountInWithoutFee.getFeeAmount(fee)"
                let expr_5 := fun_getFeeAmount(expr_4, var_fee)
                /// @src 68:11204:11234  "amountInWithoutFee + feeAmount"
                let expr_6 := checked_add_uint128(expr_4, expr_5)
                /// @src 68:11295:11494  "swapForY..."
                let expr_component := /** @src -1:-1:-1 */ 0
                let expr_54230_component := 0
                let expr_component_1 := 0
                /// @src 68:11295:11494  "swapForY..."
                switch var_swapForY
                case 0 {
                    expr_component := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:11414:11437  "amountIn.encodeSecond()" */ expr_6)
                    /// @src 68:11295:11494  "swapForY..."
                    expr_54230_component := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:11439:11467  "amountOutOfBin.encodeFirst()" */ expr_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                    /// @src 68:11295:11494  "swapForY..."
                    expr_component_1 := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:11469:11493  "feeAmount.encodeSecond()" */ expr_5)
                }
                default /// @src 68:11295:11494  "swapForY..."
                {
                    expr_component := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:11319:11341  "amountIn.encodeFirst()" */ expr_6, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                    /// @src 68:11295:11494  "swapForY..."
                    expr_54230_component := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:11343:11372  "amountOutOfBin.encodeSecond()" */ expr_3)
                    /// @src 68:11295:11494  "swapForY..."
                    expr_component_1 := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:11374:11397  "feeAmount.encodeFirst()" */ expr_5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                }
                /// @src 68:11245:11494  "(amountsInWithFees, amountsOutOfBin, totalFees) = swapForY..."
                var_totalFees := expr_component_1
                var_amountsOutOfBin := expr_54230_component
                var_amountsInWithFees := expr_component
            }
            /// @ast-id 57882 @src 78:5671:5950  "function sub(bytes32 x, bytes32 y) internal pure returns (bytes32 z) {..."
            function fun_sub(var_x, var_y) -> var_z
            {
                /// @src 78:5750:5813  "assembly (\"memory-safe\") {..."
                var_z := sub(var_x, var_y)
                /// @src 78:5827:5877  "z > x || uint128(uint256(z)) > uint128(uint256(x))"
                let expr := /** @src 78:5827:5832  "z > x" */ gt(var_z, var_x)
                /// @src 78:5827:5877  "z > x || uint128(uint256(z)) > uint128(uint256(x))"
                if iszero(expr)
                {
                    expr := /** @src 78:5836:5877  "uint128(uint256(z)) > uint128(uint256(x))" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 78:5844:5854  "uint256(z)" */ var_z, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 78:5866:5876  "uint256(x)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                }
                /// @src 78:5823:5944  "if (z > x || uint128(uint256(z)) > uint128(uint256(x))) {..."
                if expr
                {
                    /// @src 78:5900:5933  "PackedUint128Math__SubUnderflow()"
                    mstore(0, 0xe599af5500000000000000000000000000000000000000000000000000000000)
                    revert(0, 4)
                }
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function checked_sub_uint128(x, y) -> diff
            {
                diff := sub(and(x, 0xffffffffffffffffffffffffffffffff), and(y, 0xffffffffffffffffffffffffffffffff))
                if gt(diff, 0xffffffffffffffffffffffffffffffff) { panic_error_0x11() }
            }
            /// @ast-id 54417 @src 68:12265:14014  "function getAmountsOut(..."
            function fun_getAmountsOut(var_binReserves, var_fee, var_binStep, var_swapForY, var_activeId, var_amountsInLeft) -> var_amountsInWithFees, var_amountsOutOfBin, var_totalFees
            {
                /// @src 68:12624:12656  "activeId.getPriceFromId(binStep)"
                let expr := fun_getPriceFromId(var_activeId, var_binStep)
                /// @src 68:12691:12720  "binReserves.decode(!swapForY)"
                let expr_1 := fun_decode(var_binReserves, /** @src 68:12710:12719  "!swapForY" */ iszero(var_swapForY))
                /// @src 68:12753:12949  "swapForY..."
                let expr_2 := /** @src -1:-1:-1 */ 0
                /// @src 68:12753:12949  "swapForY..."
                switch var_swapForY
                case 0 {
                    expr_2 := /** @src 68:12870:12949  "uint256(binReserveOut).mulShiftRoundUp(price, Constants.SCALE_OFFSET).safe128()" */ fun_safe128(/** @src 68:12870:12939  "uint256(binReserveOut).mulShiftRoundUp(price, Constants.SCALE_OFFSET)" */ fun_mulShiftRoundUp(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:12870:12892  "uint256(binReserveOut)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 68:12870:12939  "uint256(binReserveOut).mulShiftRoundUp(price, Constants.SCALE_OFFSET)" */ expr))
                }
                default /// @src 68:12753:12949  "swapForY..."
                {
                    expr_2 := /** @src 68:12776:12855  "uint256(binReserveOut).shiftDivRoundUp(Constants.SCALE_OFFSET, price).safe128()" */ fun_safe128(/** @src 68:12776:12845  "uint256(binReserveOut).shiftDivRoundUp(Constants.SCALE_OFFSET, price)" */ fun_shiftDivRoundUp(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:12776:12798  "uint256(binReserveOut)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 68:12776:12845  "uint256(binReserveOut).shiftDivRoundUp(Constants.SCALE_OFFSET, price)" */ expr))
                }
                /// @src 68:12977:13006  "maxAmountIn.getFeeAmount(fee)"
                let expr_3 := fun_getFeeAmount(expr_2, var_fee)
                /// @src 68:13017:13038  "maxAmountIn += maxFee"
                let expr_4 := checked_add_uint128(expr_2, expr_3)
                /// @src 68:13049:13101  "uint128 amountIn128 = amountsInLeft.decode(swapForY)"
                let var_amountIn128 := /** @src 68:13071:13101  "amountsInLeft.decode(swapForY)" */ fun_decode(var_amountsInLeft, var_swapForY)
                /// @src 68:13111:13125  "uint128 fee128"
                let var_fee128 := /** @src -1:-1:-1 */ 0
                /// @src 68:13135:13155  "uint128 amountOut128"
                let var_amountOut128 := /** @src -1:-1:-1 */ 0
                /// @src 68:13166:13752  "if (amountIn128 >= maxAmountIn) {..."
                switch /** @src 68:13170:13196  "amountIn128 >= maxAmountIn" */ iszero(lt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:13170:13196  "amountIn128 >= maxAmountIn" */ var_amountIn128, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:13170:13196  "amountIn128 >= maxAmountIn" */ expr_4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)))
                case /** @src 68:13166:13752  "if (amountIn128 >= maxAmountIn) {..." */ 0 {
                    /// @src 68:13340:13382  "fee128 = amountIn128.getFeeAmountFrom(fee)"
                    var_fee128 := /** @src 68:13349:13382  "amountIn128.getFeeAmountFrom(fee)" */ fun_getFeeAmountFrom(var_amountIn128, var_fee)
                    /// @src 68:13397:13436  "uint256 amountIn = amountIn128 - fee128"
                    let var_amountIn := convert_uint128_to_uint256(/** @src 68:13416:13436  "amountIn128 - fee128" */ checked_sub_uint128(var_amountIn128, var_fee128))
                    /// @src 68:13466:13664  "swapForY..."
                    let expr_5 := /** @src -1:-1:-1 */ 0
                    /// @src 68:13466:13664  "swapForY..."
                    switch var_swapForY
                    case 0 {
                        expr_5 := /** @src 68:13588:13664  "uint256(amountIn).shiftDivRoundDown(Constants.SCALE_OFFSET, price).safe128()" */ fun_safe128(/** @src 68:13588:13654  "uint256(amountIn).shiftDivRoundDown(Constants.SCALE_OFFSET, price)" */ fun_shiftDivRoundDown(var_amountIn, expr))
                    }
                    default /// @src 68:13466:13664  "swapForY..."
                    {
                        expr_5 := /** @src 68:13493:13569  "uint256(amountIn).mulShiftRoundDown(price, Constants.SCALE_OFFSET).safe128()" */ fun_safe128(/** @src 68:13493:13559  "uint256(amountIn).mulShiftRoundDown(price, Constants.SCALE_OFFSET)" */ fun_mulShiftRoundDown(var_amountIn, expr))
                    }
                    /// @src 68:13451:13664  "amountOut128 = swapForY..."
                    var_amountOut128 := expr_5
                    /// @src 68:13679:13741  "if (amountOut128 > binReserveOut) amountOut128 = binReserveOut"
                    if /** @src 68:13683:13711  "amountOut128 > binReserveOut" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:13683:13711  "amountOut128 > binReserveOut" */ expr_5, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:13683:13711  "amountOut128 > binReserveOut" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                    /// @src 68:13679:13741  "if (amountOut128 > binReserveOut) amountOut128 = binReserveOut"
                    {
                        /// @src 68:13713:13741  "amountOut128 = binReserveOut"
                        var_amountOut128 := expr_1
                    }
                }
                default /// @src 68:13166:13752  "if (amountIn128 >= maxAmountIn) {..."
                {
                    /// @src 68:13212:13227  "fee128 = maxFee"
                    var_fee128 := expr_3
                    /// @src 68:13242:13267  "amountIn128 = maxAmountIn"
                    var_amountIn128 := expr_4
                    /// @src 68:13281:13309  "amountOut128 = binReserveOut"
                    var_amountOut128 := expr_1
                }
                /// @src 68:13812:14007  "swapForY..."
                let expr_54413_component := /** @src -1:-1:-1 */ 0
                let expr_54413_component_1 := 0
                let expr_54413_component_2 := 0
                /// @src 68:13812:14007  "swapForY..."
                switch var_swapForY
                case 0 {
                    expr_54413_component := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:13929:13955  "amountIn128.encodeSecond()" */ var_amountIn128)
                    /// @src 68:13812:14007  "swapForY..."
                    expr_54413_component_1 := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:13957:13983  "amountOut128.encodeFirst()" */ var_amountOut128, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                    /// @src 68:13812:14007  "swapForY..."
                    expr_54413_component_2 := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:13985:14006  "fee128.encodeSecond()" */ var_fee128)
                }
                default /// @src 68:13812:14007  "swapForY..."
                {
                    expr_54413_component := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:13836:13861  "amountIn128.encodeFirst()" */ var_amountIn128, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                    /// @src 68:13812:14007  "swapForY..."
                    expr_54413_component_1 := /** @src 78:1853:1922  "assembly (\"memory-safe\") {..." */ shl(128, /** @src 68:13863:13890  "amountOut128.encodeSecond()" */ var_amountOut128)
                    /// @src 68:13812:14007  "swapForY..."
                    expr_54413_component_2 := /** @src 78:1489:1560  "assembly (\"memory-safe\") {..." */ and(/** @src 68:13892:13912  "fee128.encodeFirst()" */ var_fee128, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                }
                /// @src 68:13762:14007  "(amountsInWithFees, amountsOutOfBin, totalFees) = swapForY..."
                var_totalFees := expr_54413_component_2
                var_amountsOutOfBin := expr_54413_component_1
                var_amountsInWithFees := expr_54413_component
            }
            /// @ast-id 58066 @src 78:7956:8595  "function getProtocolFeeAmt(bytes32 amount, uint24 protocolFee, uint24 swapFee) internal pure returns (bytes32 z) {..."
            function fun_getProtocolFeeAmt(var_amount, var_protocolFee, var_swapFee) -> var_z
            {
                /// @src 78:8058:8067  "bytes32 z"
                var_z := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 78:8083:8115  "protocolFee == 0 || swapFee == 0"
                let expr := /** @src 78:8083:8099  "protocolFee == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 78:8083:8099  "protocolFee == 0" */ var_protocolFee, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                /// @src 78:8083:8115  "protocolFee == 0 || swapFee == 0"
                if iszero(expr)
                {
                    expr := /** @src 78:8103:8115  "swapFee == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 78:8103:8115  "swapFee == 0" */ var_swapFee, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                }
                /// @src 78:8079:8125  "if (protocolFee == 0 || swapFee == 0) return 0"
                if expr
                {
                    /// @src 78:8117:8125  "return 0"
                    var_z := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 78:8117:8125  "return 0"
                    leave
                }
                /// @src 78:8173:8187  "decode(amount)"
                let expr_58001_component, expr_58001_component_1 := fun_decode_57749(var_amount)
                /// @src 57:973:985  "self & 0xfff"
                let _1 := and(/** @src 78:8211:8241  "protocolFee.getZeroForOneFee()" */ var_protocolFee, /** @src 57:980:985  "0xfff" */ 0x0fff)
                /// @src 78:8265:8295  "protocolFee.getOneForZeroFee()"
                let expr_1 := /** @src 57:1294:1312  "uint16(self >> 12)" */ cleanup_from_storage_uint16(/** @src 57:1301:1311  "self >> 12" */ shift_right_uint24_uint8(/** @src 78:8265:8295  "protocolFee.getOneForZeroFee()" */ var_protocolFee))
                /// @src 78:8390:8451  "fee0 == 0 ? 0 : (uint256(amountX) * fee0 / swapFee).safe128()"
                let expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 78:8390:8451  "fee0 == 0 ? 0 : (uint256(amountX) * fee0 / swapFee).safe128()"
                switch /** @src 78:8390:8399  "fee0 == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1)
                case /** @src 78:8390:8451  "fee0 == 0 ? 0 : (uint256(amountX) * fee0 / swapFee).safe128()" */ 0 {
                    expr_2 := /** @src 78:8406:8451  "(uint256(amountX) * fee0 / swapFee).safe128()" */ fun_safe128(/** @src 78:8407:8440  "uint256(amountX) * fee0 / swapFee" */ checked_div_uint256(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(and(/** @src 78:8407:8423  "uint256(amountX)" */ expr_58001_component, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), _1), and(/** @src 78:8407:8440  "uint256(amountX) * fee0 / swapFee" */ var_swapFee, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)))
                }
                default /// @src 78:8390:8451  "fee0 == 0 ? 0 : (uint256(amountX) * fee0 / swapFee).safe128()"
                {
                    expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                }
                let _2 := and(/** @src 78:8475:8484  "fee1 == 0" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff)
                /// @src 78:8475:8536  "fee1 == 0 ? 0 : (uint256(amountY) * fee1 / swapFee).safe128()"
                let expr_3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 78:8475:8536  "fee1 == 0 ? 0 : (uint256(amountY) * fee1 / swapFee).safe128()"
                switch /** @src 78:8475:8484  "fee1 == 0" */ iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _2)
                case /** @src 78:8475:8536  "fee1 == 0 ? 0 : (uint256(amountY) * fee1 / swapFee).safe128()" */ 0 {
                    expr_3 := /** @src 78:8491:8536  "(uint256(amountY) * fee1 / swapFee).safe128()" */ fun_safe128(/** @src 78:8492:8525  "uint256(amountY) * fee1 / swapFee" */ checked_div_uint256(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(and(/** @src 78:8492:8508  "uint256(amountY)" */ expr_58001_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), _2), and(/** @src 78:8492:8525  "uint256(amountY) * fee1 / swapFee" */ var_swapFee, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)))
                }
                default /// @src 78:8475:8536  "fee1 == 0 ? 0 : (uint256(amountY) * fee1 / swapFee).safe128()"
                {
                    expr_3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                }
                /// @src 78:8557:8588  "return encode(feeForX, feeForY)"
                var_z := /** @src 78:8564:8588  "encode(feeForX, feeForY)" */ fun_encode(expr_2, expr_3)
            }
            /// @ast-id 50916 @src 54:4630:5127  "function callHookWithReturnDelta(IHooks self, bytes memory data, bool parseReturn)..."
            function fun_callHookWithReturnDelta(var_self_address, var_data_50884_mpos, var_parseReturn) -> var_delta
            {
                /// @src 54:4747:4759  "int256 delta"
                var_delta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 54:4797:4817  "callHook(self, data)"
                let expr_50896_mpos := fun_callHook(var_self_address, var_data_50884_mpos)
                /// @src 54:4904:4930  "if (!parseReturn) return 0"
                if /** @src 54:4908:4920  "!parseReturn" */ iszero(var_parseReturn)
                /// @src 54:4904:4930  "if (!parseReturn) return 0"
                {
                    /// @src 54:4922:4930  "return 0"
                    var_delta := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 54:4922:4930  "return 0"
                    leave
                }
                /// @src 54:5025:5078  "if (result.length != 64) revert InvalidHookResponse()"
                if /** @src 54:5029:5048  "result.length != 64" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mload(/** @src 54:5029:5042  "result.length" */ expr_50896_mpos), /** @src 54:5046:5048  "64" */ 0x40))
                /// @src 54:5025:5078  "if (result.length != 64) revert InvalidHookResponse()"
                {
                    /// @src 54:5057:5078  "InvalidHookResponse()"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 54:5057:5078  "InvalidHookResponse()" */ 0x1e048e1d00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 54:5057:5078  "InvalidHookResponse()" */ 4)
                }
                /// @src 54:5088:5120  "return result.parseReturnDelta()"
                var_delta := /** @src 56:1150:1237  "assembly (\"memory-safe\") {..." */ mload(add(/** @src 54:5095:5120  "result.parseReturnDelta()" */ expr_50896_mpos, /** @src 54:5046:5048  "64" */ 0x40))
            }
            /// @ast-id 51212 @src 58:1016:1146  "function toInt128(int256 x) internal pure returns (int128 y) {..."
            function fun_toInt128(var_x) -> var_y
            {
                /// @src 58:1087:1100  "y = int128(x)"
                var_y := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ signextend(15, /** @src 58:1091:1100  "int128(x)" */ var_x)
                /// @src 58:1110:1139  "if (y != x) _revertOverflow()"
                if /** @src 58:1114:1120  "y != x" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_y, /** @src 58:1114:1120  "y != x" */ var_x))
                /// @src 58:1110:1139  "if (y != x) _revertOverflow()"
                {
                    /// @src 79:300:515  "assembly (\"memory-safe\") {..."
                    mstore(0x00, 0x93dafdf1)
                    revert(0x1c, 0x04)
                }
            }
            /// @ast-id 67906 @src 108:1070:1466  "function sub(BalanceDelta a, BalanceDelta b) pure returns (BalanceDelta) {..."
            function fun_sub_67906(var_a, var_b) -> var_
            {
                /// @src 108:1430:1445  "res0.toInt128()"
                let expr := fun_toInt128(/** @src 108:1183:1403  "assembly (\"memory-safe\") {..." */ sub(sar(128, var_a), sar(128, var_b)))
                /// @src 108:1408:1463  "return toBalanceDelta(res0.toInt128(), res1.toInt128())"
                var_ := /** @src 108:553:668  "assembly (\"memory-safe\") {..." */ or(shl(/** @src 108:1183:1403  "assembly (\"memory-safe\") {..." */ 128, /** @src 108:553:668  "assembly (\"memory-safe\") {..." */ expr), and(0xffffffffffffffffffffffffffffffff, /** @src 108:1447:1462  "res1.toInt128()" */ fun_toInt128(/** @src 108:1183:1403  "assembly (\"memory-safe\") {..." */ sub(signextend(15, var_a), signextend(15, var_b)))))
            }
            /// @ast-id 56991 @src 72:797:1719  "function calculatePositionKey(address owner, uint24 binId, bytes32 salt) internal pure returns (bytes32 key) {..."
            function fun_calculatePositionKey(var_owner, var_binId, var_salt) -> var_key
            {
                /// @src 72:1167:1713  "assembly (\"memory-safe\") {..."
                let usr$fmp := mload(0x40)
                mstore(add(usr$fmp, 0x23), var_salt)
                mstore(add(usr$fmp, 0x03), var_binId)
                mstore(usr$fmp, var_owner)
                var_key := keccak256(add(usr$fmp, 0x0c), 0x37)
                mstore(add(usr$fmp, 0x40), 0)
                mstore(add(usr$fmp, 0x20), 0)
                mstore(usr$fmp, 0)
            }
            /// @ast-id 58715 @src 79:8529:8649  "function safe24(uint256 x) internal pure returns (uint24 y) {..."
            function fun_safe24(var_x) -> var_y
            {
                /// @src 79:8604:8617  "y = uint24(x)"
                var_y := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 79:8608:8617  "uint24(x)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 79:8599:8642  "if ((y = uint24(x)) != x) _revertOverflow()"
                if /** @src 79:8603:8623  "(y = uint24(x)) != x" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_y, /** @src 79:8603:8623  "(y = uint24(x)) != x" */ var_x))
                /// @src 79:8599:8642  "if ((y = uint24(x)) != x) _revertOverflow()"
                {
                    /// @src 79:300:515  "assembly (\"memory-safe\") {..."
                    mstore(0x00, 0x93dafdf1)
                    revert(0x1c, 0x04)
                }
            }
            /// @ast-id 56813 @src 70:19749:19970  "function _subShare(State storage self, address owner, uint24 binId, bytes32 salt, uint256 shares) internal {..."
            function fun_subShare(var_self_56780_slot, var_owner, var_binId, var_salt, var_shares)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 72:2376:2416  "calculatePositionKey(owner, binId, salt)" */ fun_calculatePositionKey(/** @src 70:19866:19904  "self.positions.get(owner, binId, salt)" */ var_owner, var_binId, var_salt))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(0x20, /** @src 70:19866:19880  "self.positions" */ add(var_self_56780_slot, 3))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)
                let _1 := sload(/** @src 72:2633:2652  "self.share -= share" */ dataSlot)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let diff := sub(_1, var_shares)
                if gt(diff, _1) { panic_error_0x11() }
                /// @src 55:1449:1456  "100_000"
                sstore(dataSlot, diff)
                /// @src 70:19931:19953  "self.shareOfBin[binId]"
                let _2 := mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:19931:19946  "self.shareOfBin" */ add(var_self_56780_slot, 2), /** @src 70:19931:19953  "self.shareOfBin[binId]" */ var_binId)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := sload(/** @src 70:19931:19963  "self.shareOfBin[binId] -= shares" */ _2)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let diff_1 := sub(_3, var_shares)
                if gt(diff_1, _3) { panic_error_0x11() }
                /// @src 55:1449:1456  "100_000"
                sstore(_2, diff_1)
            }
            /// @ast-id 53681 @src 68:1465:2131  "function getAmountOutOfBin(bytes32 binReserves, uint256 amountToBurn, uint256 totalSupply)..."
            function fun_getAmountOutOfBin(var_binReserves, var_amountToBurn, var_totalSupply) -> var_amountsOut
            {
                /// @src 78:2740:2844  "assembly (\"memory-safe\") {..."
                let var_x1 := and(var_binReserves, 340282366920938463463374607431768211455)
                let var_x2 := shr(128, var_binReserves)
                /// @src 68:1713:1738  "uint128 amountXOutFromBin"
                let var_amountXOutFromBin := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:1713:1738  "uint128 amountXOutFromBin"
                var_amountXOutFromBin := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:1748:1773  "uint128 amountYOutFromBin"
                let var_amountYOutFromBin := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:1748:1773  "uint128 amountYOutFromBin"
                var_amountYOutFromBin := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:1784:1916  "if (binReserveX > 0) {..."
                if /** @src 68:1788:1803  "binReserveX > 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_x1))
                /// @src 68:1784:1916  "if (binReserveX > 0) {..."
                {
                    /// @src 82:1022:1040  "_getMulProds(x, y)"
                    let expr_component, expr_component_1 := fun_getMulProds(var_amountToBurn, var_x1)
                    /// @src 68:1819:1905  "amountXOutFromBin = (amountToBurn.mulDivRoundDown(binReserveX, totalSupply)).safe128()"
                    var_amountXOutFromBin := /** @src 68:1839:1905  "(amountToBurn.mulDivRoundDown(binReserveX, totalSupply)).safe128()" */ fun_safe128(/** @src 82:1058:1112  "_getEndOfDivRoundDown(x, y, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(var_amountToBurn, var_x1, var_totalSupply, expr_component, expr_component_1))
                }
                /// @src 68:1926:2058  "if (binReserveY > 0) {..."
                if /** @src 68:1930:1945  "binReserveY > 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_x2))
                /// @src 68:1926:2058  "if (binReserveY > 0) {..."
                {
                    /// @src 82:1022:1040  "_getMulProds(x, y)"
                    let expr_component_2, expr_component_3 := fun_getMulProds(var_amountToBurn, var_x2)
                    /// @src 68:1961:2047  "amountYOutFromBin = (amountToBurn.mulDivRoundDown(binReserveY, totalSupply)).safe128()"
                    var_amountYOutFromBin := /** @src 68:1981:2047  "(amountToBurn.mulDivRoundDown(binReserveY, totalSupply)).safe128()" */ fun_safe128(/** @src 82:1058:1112  "_getEndOfDivRoundDown(x, y, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(var_amountToBurn, var_x2, var_totalSupply, expr_component_2, expr_component_3))
                }
                /// @src 68:2068:2124  "amountsOut = amountXOutFromBin.encode(amountYOutFromBin)"
                var_amountsOut := /** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ or(and(var_amountXOutFromBin, /** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455), /** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ shl(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ 128, /** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ var_amountYOutFromBin))
            }
            /// @ast-id 56902 @src 70:20534:20701  "function _removeBinIdToTree(State storage self, uint24 binId) internal {..."
            function fun_removeBinIdToTree(var_self_56880_slot, var_binId)
            {
                /// @src 70:20649:20660  "self.level0"
                let _1 := add(var_self_56880_slot, 4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src 70:20649:20660  "self.level0" */ _1)
                /// @src 70:20633:20694  "TreeMath.remove(self.level0, self.level1, self.level2, binId)"
                let expr_56898_component, expr_56898_component_1 := fun_remove(_2, /** @src 70:20662:20673  "self.level1" */ add(var_self_56880_slot, 5), /** @src 70:20675:20686  "self.level2" */ add(var_self_56880_slot, 6), /** @src 70:20633:20694  "TreeMath.remove(self.level0, self.level1, self.level2, binId)" */ var_binId)
                /// @src 55:1449:1456  "100_000"
                sstore(_1, expr_56898_component_1)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function shift_right_uint256_uint8(value) -> result
            { result := shr(8, value) }
            function shift_left_uint256_uint8(value) -> result
            { result := shl(8, value) }
            /// @ast-id 59688 @src 80:4846:6525  "function findFirstLeft(..."
            function fun_findFirstLeft(var_level0, var_level1_59409_slot, var_level2_59413_slot, var_id) -> var
            {
                /// @src 80:5111:5127  "uint256(id) >> 8"
                let _1 := shift_right_uint256_uint8(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 80:5111:5122  "uint256(id)" */ var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                /// @src 80:5156:5176  "id & type(uint8).max"
                let _2 := and(var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:5188:5425  "if (bit != type(uint8).max) {..."
                if /** @src 80:5192:5214  "bit != type(uint8).max" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _2, 0xff))
                /// @src 80:5188:5425  "if (bit != type(uint8).max) {..."
                {
                    /// @src 80:5286:5314  "_closestBitLeft(leaves, bit)"
                    let expr := fun_closestBitLeft(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 80:5239:5251  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59413_slot, _1)), /** @src 80:5286:5314  "_closestBitLeft(leaves, bit)" */ _2)
                    /// @src 80:5329:5414  "if (closestBit != type(uint256).max) return uint24((uint256(key2) << 8) | closestBit)"
                    if /** @src 80:5333:5364  "closestBit != type(uint256).max" */ iszero(eq(expr, /** @src 80:5347:5364  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:5329:5414  "if (closestBit != type(uint256).max) return uint24((uint256(key2) << 8) | closestBit)"
                    {
                        /// @src 80:5366:5414  "return uint24((uint256(key2) << 8) | closestBit)"
                        var := /** @src 80:5373:5414  "uint24((uint256(key2) << 8) | closestBit)" */ cleanup_from_storage_uint24(/** @src 80:5380:5413  "(uint256(key2) << 8) | closestBit" */ or(/** @src 80:5381:5399  "uint256(key2) << 8" */ shift_left_uint256_uint8(/** @src 80:5381:5394  "uint256(key2)" */ _1), /** @src 80:5380:5413  "(uint256(key2) << 8) | closestBit" */ expr))
                        /// @src 80:5366:5414  "return uint24((uint256(key2) << 8) | closestBit)"
                        leave
                    }
                }
                /// @src 80:5450:5459  "key2 >> 8"
                let expr_1 := shift_right_uint256_uint8(_1)
                /// @src 80:5481:5512  "uint256(key2) & type(uint8).max"
                let _3 := and(_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:5524:5927  "if (bit != type(uint8).max) {..."
                if /** @src 80:5528:5550  "bit != type(uint8).max" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _3, 0xff))
                /// @src 80:5524:5927  "if (bit != type(uint8).max) {..."
                {
                    /// @src 80:5622:5650  "_closestBitLeft(leaves, bit)"
                    let expr_2 := fun_closestBitLeft(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 80:5575:5587  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_59409_slot, expr_1)), /** @src 80:5622:5650  "_closestBitLeft(leaves, bit)" */ _3)
                    /// @src 80:5665:5917  "if (closestBit != type(uint256).max) {..."
                    if /** @src 80:5669:5700  "closestBit != type(uint256).max" */ iszero(eq(expr_2, /** @src 80:5683:5700  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:5665:5917  "if (closestBit != type(uint256).max) {..."
                    {
                        /// @src 80:5735:5768  "(uint256(key1) << 8) | closestBit"
                        let _4 := or(/** @src 80:5736:5754  "uint256(key1) << 8" */ shift_left_uint256_uint8(/** @src 80:5736:5749  "uint256(key1)" */ expr_1), /** @src 80:5735:5768  "(uint256(key1) << 8) | closestBit" */ expr_2)
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _5 := sload(/** @src 80:5796:5808  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59413_slot, _4))
                        /// @src 80:5842:5860  "uint256(key2) << 8"
                        let expr_3 := shift_left_uint256_uint8(/** @src 80:5842:5855  "uint256(key2)" */ _4)
                        /// @src 80:5827:5902  "return uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())"
                        var := /** @src 80:5834:5902  "uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())" */ cleanup_from_storage_uint24(/** @src 80:5841:5901  "(uint256(key2) << 8) | uint256(leaves).leastSignificantBit()" */ or(expr_3, convert_uint8_to_uint256(/** @src 80:5864:5901  "uint256(leaves).leastSignificantBit()" */ fun_leastSignificantBit(/** @src 80:5864:5879  "uint256(leaves)" */ _5))))
                        /// @src 80:5827:5902  "return uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())"
                        leave
                    }
                }
                /// @src 80:5949:5980  "uint256(key1) & type(uint8).max"
                let _6 := and(/** @src 80:5949:5962  "uint256(key1)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:5992:6500  "if (bit != type(uint8).max) {..."
                if /** @src 80:5996:6018  "bit != type(uint8).max" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _6, 0xff))
                /// @src 80:5992:6500  "if (bit != type(uint8).max) {..."
                {
                    /// @src 80:6084:6112  "_closestBitLeft(leaves, bit)"
                    let expr_4 := fun_closestBitLeft(var_level0, _6)
                    /// @src 80:6127:6490  "if (closestBit != type(uint256).max) {..."
                    if /** @src 80:6131:6162  "closestBit != type(uint256).max" */ iszero(eq(expr_4, /** @src 80:6145:6162  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:6127:6490  "if (closestBit != type(uint256).max) {..."
                    {
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _7 := sload(/** @src 80:6235:6247  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_59409_slot, expr_4))
                        /// @src 80:6282:6300  "uint256(key1) << 8"
                        let expr_5 := shift_left_uint256_uint8(/** @src 80:6282:6295  "uint256(key1)" */ expr_4)
                        /// @src 80:6281:6341  "(uint256(key1) << 8) | uint256(leaves).leastSignificantBit()"
                        let _8 := or(expr_5, convert_uint8_to_uint256(/** @src 80:6304:6341  "uint256(leaves).leastSignificantBit()" */ fun_leastSignificantBit(/** @src 80:6304:6319  "uint256(leaves)" */ _7)))
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _9 := sload(/** @src 80:6369:6381  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59413_slot, _8))
                        /// @src 80:6415:6433  "uint256(key2) << 8"
                        let expr_6 := shift_left_uint256_uint8(/** @src 80:6415:6428  "uint256(key2)" */ _8)
                        /// @src 80:6400:6475  "return uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())"
                        var := /** @src 80:6407:6475  "uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())" */ cleanup_from_storage_uint24(/** @src 80:6414:6474  "(uint256(key2) << 8) | uint256(leaves).leastSignificantBit()" */ or(expr_6, convert_uint8_to_uint256(/** @src 80:6437:6474  "uint256(leaves).leastSignificantBit()" */ fun_leastSignificantBit(/** @src 80:6437:6452  "uint256(leaves)" */ _9))))
                        /// @src 80:6400:6475  "return uint24((uint256(key2) << 8) | uint256(leaves).leastSignificantBit())"
                        leave
                    }
                }
                /// @src 80:6510:6518  "return 0"
                var := /** @src -1:-1:-1 */ 0
            }
            /// @ast-id 59402 @src 80:2960:4613  "function findFirstRight(..."
            function fun_findFirstRight(var_level0, var_level1_slot, var_level2_59135_slot, var_id) -> var
            {
                /// @src 80:3226:3242  "uint256(id) >> 8"
                let _1 := shift_right_uint256_uint8(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 80:3226:3237  "uint256(id)" */ var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                /// @src 80:3271:3291  "id & type(uint8).max"
                let _2 := and(var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:3303:3527  "if (bit != 0) {..."
                if /** @src 80:3307:3315  "bit != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _2))
                /// @src 80:3303:3527  "if (bit != 0) {..."
                {
                    /// @src 80:3387:3416  "_closestBitRight(leaves, bit)"
                    let expr := fun_closestBitRight(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 80:3340:3352  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59135_slot, _1)), /** @src 80:3387:3416  "_closestBitRight(leaves, bit)" */ _2)
                    /// @src 80:3431:3516  "if (closestBit != type(uint256).max) return uint24((uint256(key2) << 8) | closestBit)"
                    if /** @src 80:3435:3466  "closestBit != type(uint256).max" */ iszero(eq(expr, /** @src 80:3449:3466  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:3431:3516  "if (closestBit != type(uint256).max) return uint24((uint256(key2) << 8) | closestBit)"
                    {
                        /// @src 80:3468:3516  "return uint24((uint256(key2) << 8) | closestBit)"
                        var := /** @src 80:3475:3516  "uint24((uint256(key2) << 8) | closestBit)" */ cleanup_from_storage_uint24(/** @src 80:3482:3515  "(uint256(key2) << 8) | closestBit" */ or(/** @src 80:3483:3501  "uint256(key2) << 8" */ shift_left_uint256_uint8(/** @src 80:3483:3496  "uint256(key2)" */ _1), /** @src 80:3482:3515  "(uint256(key2) << 8) | closestBit" */ expr))
                        /// @src 80:3468:3516  "return uint24((uint256(key2) << 8) | closestBit)"
                        leave
                    }
                }
                /// @src 80:3552:3561  "key2 >> 8"
                let expr_1 := shift_right_uint256_uint8(_1)
                /// @src 80:3583:3614  "uint256(key2) & type(uint8).max"
                let _3 := and(_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:3626:4015  "if (bit != 0) {..."
                if /** @src 80:3630:3638  "bit != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _3))
                /// @src 80:3626:4015  "if (bit != 0) {..."
                {
                    /// @src 80:3710:3739  "_closestBitRight(leaves, bit)"
                    let expr_2 := fun_closestBitRight(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sload(/** @src 80:3663:3675  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_slot, expr_1)), /** @src 80:3710:3739  "_closestBitRight(leaves, bit)" */ _3)
                    /// @src 80:3754:4005  "if (closestBit != type(uint256).max) {..."
                    if /** @src 80:3758:3789  "closestBit != type(uint256).max" */ iszero(eq(expr_2, /** @src 80:3772:3789  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:3754:4005  "if (closestBit != type(uint256).max) {..."
                    {
                        /// @src 80:3824:3857  "(uint256(key1) << 8) | closestBit"
                        let _4 := or(/** @src 80:3825:3843  "uint256(key1) << 8" */ shift_left_uint256_uint8(/** @src 80:3825:3838  "uint256(key1)" */ expr_1), /** @src 80:3824:3857  "(uint256(key1) << 8) | closestBit" */ expr_2)
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _5 := sload(/** @src 80:3885:3897  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59135_slot, _4))
                        /// @src 80:3931:3949  "uint256(key2) << 8"
                        let expr_3 := shift_left_uint256_uint8(/** @src 80:3931:3944  "uint256(key2)" */ _4)
                        /// @src 80:3916:3990  "return uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())"
                        var := /** @src 80:3923:3990  "uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())" */ cleanup_from_storage_uint24(/** @src 80:3930:3989  "(uint256(key2) << 8) | uint256(leaves).mostSignificantBit()" */ or(expr_3, convert_uint8_to_uint256(/** @src 80:3953:3989  "uint256(leaves).mostSignificantBit()" */ fun_mostSignificantBit(/** @src 80:3953:3968  "uint256(leaves)" */ _5))))
                        /// @src 80:3916:3990  "return uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())"
                        leave
                    }
                }
                /// @src 80:4037:4068  "uint256(key1) & type(uint8).max"
                let _6 := and(/** @src 80:4037:4050  "uint256(key1)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                /// @src 80:4080:4573  "if (bit != 0) {..."
                if /** @src 80:4084:4092  "bit != 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _6))
                /// @src 80:4080:4573  "if (bit != 0) {..."
                {
                    /// @src 80:4158:4187  "_closestBitRight(leaves, bit)"
                    let expr_4 := fun_closestBitRight(var_level0, _6)
                    /// @src 80:4202:4563  "if (closestBit != type(uint256).max) {..."
                    if /** @src 80:4206:4237  "closestBit != type(uint256).max" */ iszero(eq(expr_4, /** @src 80:4220:4237  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff))
                    /// @src 80:4202:4563  "if (closestBit != type(uint256).max) {..."
                    {
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _7 := sload(/** @src 80:4310:4322  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_slot, expr_4))
                        /// @src 80:4357:4375  "uint256(key1) << 8"
                        let expr_5 := shift_left_uint256_uint8(/** @src 80:4357:4370  "uint256(key1)" */ expr_4)
                        /// @src 80:4356:4415  "(uint256(key1) << 8) | uint256(leaves).mostSignificantBit()"
                        let _8 := or(expr_5, convert_uint8_to_uint256(/** @src 80:4379:4415  "uint256(leaves).mostSignificantBit()" */ fun_mostSignificantBit(/** @src 80:4379:4394  "uint256(leaves)" */ _7)))
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _9 := sload(/** @src 80:4443:4455  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_59135_slot, _8))
                        /// @src 80:4489:4507  "uint256(key2) << 8"
                        let expr_6 := shift_left_uint256_uint8(/** @src 80:4489:4502  "uint256(key2)" */ _8)
                        /// @src 80:4474:4548  "return uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())"
                        var := /** @src 80:4481:4548  "uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())" */ cleanup_from_storage_uint24(/** @src 80:4488:4547  "(uint256(key2) << 8) | uint256(leaves).mostSignificantBit()" */ or(expr_6, convert_uint8_to_uint256(/** @src 80:4511:4547  "uint256(leaves).mostSignificantBit()" */ fun_mostSignificantBit(/** @src 80:4511:4526  "uint256(leaves)" */ _9))))
                        /// @src 80:4474:4548  "return uint24((uint256(key2) << 8) | uint256(leaves).mostSignificantBit())"
                        leave
                    }
                }
                /// @src 80:4583:4606  "return type(uint24).max"
                var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff
            }
            /// @ast-id 51555 @src 61:2343:2546  "function decodeBool(bytes32 encoded, uint256 offset) internal pure returns (bool boolean) {..."
            function fun_decodeBool(var_encoded, var_offset) -> var_boolean
            {
                /// @src 61:2443:2540  "assembly (\"memory-safe\") {..."
                var_boolean := and(shr(var_offset, var_encoded), 1)
            }
            /// @ast-id 50683 @src 53:607:1250  "function bubbleUpAndRevertWith(bytes4 selector, address addr) internal pure {..."
            function fun_bubbleUpAndRevertWith(var_addr)
            {
                /// @src 53:693:1244  "assembly (\"memory-safe\") {..."
                let usr$size := returndatasize()
                let usr$fmp := mload(0x40)
                mstore(usr$fmp, /** @src 54:3591:3620  "Wrap__FailedHookCall.selector" */ 0x319d54c300000000000000000000000000000000000000000000000000000000)
                /// @src 53:693:1244  "assembly (\"memory-safe\") {..."
                mstore(add(usr$fmp, 0x04), var_addr)
                mstore(add(usr$fmp, 0x24), 0x40)
                mstore(add(usr$fmp, 0x44), usr$size)
                returndatacopy(add(usr$fmp, 0x64), 0, usr$size)
                revert(usr$fmp, add(0x64, and(add(usr$size, 31), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffe0)))
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function abi_encode_uint256_int256(value0, value1) -> tail
            {
                tail := 68
                mstore(/** @src 81:7613:7648  "Uint128x128Math__PowUnderflow(x, y)" */ 4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ value0)
                mstore(36, value1)
            }
            /// @ast-id 59958 @src 81:4085:7717  "function pow(uint256 x, int256 y) internal pure returns (uint256 result) {..."
            function fun_pow(var_x, var_y) -> var_result
            {
                /// @src 81:4142:4156  "uint256 result"
                var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 81:4168:4179  "bool invert"
                let var_invert := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 81:4168:4179  "bool invert"
                var_invert := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 81:4189:4201  "uint256 absY"
                let var_absY := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 81:4212:4246  "if (y == 0) return Constants.SCALE"
                if /** @src 81:4216:4222  "y == 0" */ iszero(var_y)
                /// @src 81:4212:4246  "if (y == 0) return Constants.SCALE"
                {
                    /// @src 81:4231:4246  "Constants.SCALE"
                    let ret := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 73:251:268  "1 << SCALE_OFFSET"
                    ret := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000
                    /// @src 81:4224:4246  "return Constants.SCALE"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ ret
                    /// @src 81:4224:4246  "return Constants.SCALE"
                    leave
                }
                /// @src 81:4257:4437  "assembly (\"memory-safe\") {..."
                var_absY := var_y
                if slt(var_y, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0)
                /// @src 81:4257:4437  "assembly (\"memory-safe\") {..."
                {
                    var_absY := sub(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 81:4257:4437  "assembly (\"memory-safe\") {..." */ var_y)
                    var_invert := 1
                }
                /// @src 81:4447:7523  "if (absY < 0x100000) {..."
                if /** @src 81:4451:4466  "absY < 0x100000" */ lt(var_absY, /** @src 81:4458:4466  "0x100000" */ 0x100000)
                /// @src 81:4447:7523  "if (absY < 0x100000) {..."
                {
                    /// @src 81:4491:4506  "Constants.SCALE"
                    let ret_1 := /** @src -1:-1:-1 */ 0
                    /// @src 73:251:268  "1 << SCALE_OFFSET"
                    ret_1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000
                    /// @src 81:4482:4506  "result = Constants.SCALE"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ ret_1
                    /// @src 81:4520:7513  "assembly (\"memory-safe\") {..."
                    let usr$squared := var_x
                    if gt(var_x, 0xffffffffffffffffffffffffffffffff)
                    {
                        usr$squared := div(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, var_x)
                        var_invert := iszero(var_invert)
                    }
                    if and(var_absY, 0x1)
                    {
                        var_result := shr(128, mul(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ ret_1, /** @src 81:4520:7513  "assembly (\"memory-safe\") {..." */ usr$squared))
                    }
                    let usr$squared_1 := shr(128, mul(usr$squared, usr$squared))
                    if and(var_absY, 0x2)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_1))
                    }
                    let usr$squared_2 := shr(128, mul(usr$squared_1, usr$squared_1))
                    if and(var_absY, 0x4)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_2))
                    }
                    let usr$squared_3 := shr(128, mul(usr$squared_2, usr$squared_2))
                    if and(var_absY, 0x8)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_3))
                    }
                    let usr$squared_4 := shr(128, mul(usr$squared_3, usr$squared_3))
                    if and(var_absY, 0x10)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_4))
                    }
                    let usr$squared_5 := shr(128, mul(usr$squared_4, usr$squared_4))
                    if and(var_absY, 0x20)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_5))
                    }
                    let usr$squared_6 := shr(128, mul(usr$squared_5, usr$squared_5))
                    if and(var_absY, 0x40)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_6))
                    }
                    let usr$squared_7 := shr(128, mul(usr$squared_6, usr$squared_6))
                    if and(var_absY, 128)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_7))
                    }
                    let usr$squared_8 := shr(128, mul(usr$squared_7, usr$squared_7))
                    if and(var_absY, 0x100)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_8))
                    }
                    let usr$squared_9 := shr(128, mul(usr$squared_8, usr$squared_8))
                    if and(var_absY, 0x200)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_9))
                    }
                    let usr$squared_10 := shr(128, mul(usr$squared_9, usr$squared_9))
                    if and(var_absY, 0x400)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_10))
                    }
                    let usr$squared_11 := shr(128, mul(usr$squared_10, usr$squared_10))
                    if and(var_absY, 0x800)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_11))
                    }
                    let usr$squared_12 := shr(128, mul(usr$squared_11, usr$squared_11))
                    if and(var_absY, 0x1000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_12))
                    }
                    let usr$squared_13 := shr(128, mul(usr$squared_12, usr$squared_12))
                    if and(var_absY, 0x2000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_13))
                    }
                    let usr$squared_14 := shr(128, mul(usr$squared_13, usr$squared_13))
                    if and(var_absY, 0x4000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_14))
                    }
                    let usr$squared_15 := shr(128, mul(usr$squared_14, usr$squared_14))
                    if and(var_absY, 0x8000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_15))
                    }
                    let usr$squared_16 := shr(128, mul(usr$squared_15, usr$squared_15))
                    if and(var_absY, 0x10000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_16))
                    }
                    let usr$squared_17 := shr(128, mul(usr$squared_16, usr$squared_16))
                    if and(var_absY, 0x20000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_17))
                    }
                    let usr$squared_18 := shr(128, mul(usr$squared_17, usr$squared_17))
                    if and(var_absY, 0x40000)
                    {
                        var_result := shr(128, mul(var_result, usr$squared_18))
                    }
                    if and(var_absY, 0x80000)
                    {
                        var_result := shr(128, mul(var_result, shr(128, mul(usr$squared_18, usr$squared_18))))
                    }
                }
                /// @src 81:7589:7648  "if (result == 0) revert Uint128x128Math__PowUnderflow(x, y)"
                if /** @src 81:7593:7604  "result == 0" */ iszero(var_result)
                /// @src 81:7589:7648  "if (result == 0) revert Uint128x128Math__PowUnderflow(x, y)"
                {
                    /// @src 81:7613:7648  "Uint128x128Math__PowUnderflow(x, y)"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 81:7613:7648  "Uint128x128Math__PowUnderflow(x, y)" */ 0x3b74b31a00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 81:7613:7648  "Uint128x128Math__PowUnderflow(x, y)" */ abi_encode_uint256_int256(var_x, var_y))
                }
                /// @src 81:7666:7710  "invert ? type(uint256).max / result : result"
                let expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 81:7666:7710  "invert ? type(uint256).max / result : result"
                switch var_invert
                case 0 { expr := var_result }
                default {
                    expr := /** @src 81:7675:7701  "type(uint256).max / result" */ checked_div_uint256_22106(var_result)
                }
                /// @src 81:7659:7710  "return invert ? type(uint256).max / result : result"
                var_result := expr
            }
            /// @ast-id 53899 @src 68:5053:6328  "function getLiquidity(uint256 x, uint256 y, uint256 price) internal pure returns (uint256 liquidity) {..."
            function fun_getLiquidity(var_x, var_y, var_price) -> var_liquidity
            {
                /// @src 68:5135:5152  "uint256 liquidity"
                var_liquidity := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:5164:5636  "if (x > 0) {..."
                if /** @src 68:5168:5173  "x > 0" */ iszero(iszero(var_x))
                /// @src 68:5164:5636  "if (x > 0) {..."
                {
                    /// @src 68:5342:5626  "assembly (\"memory-safe\") {..."
                    var_liquidity := mul(var_price, var_x)
                    if iszero(eq(div(var_liquidity, var_x), var_price))
                    {
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 68:5342:5626  "assembly (\"memory-safe\") {..." */ 0x63f1e01f)
                        revert(0x1c, 0x04)
                    }
                }
                /// @src 68:5645:6295  "if (y > 0) {..."
                if /** @src 68:5649:5654  "y > 0" */ iszero(iszero(var_y))
                /// @src 68:5645:6295  "if (y > 0) {..."
                {
                    /// @src 68:5905:6285  "assembly (\"memory-safe\") {..."
                    var_y := shl(/** @src 73:208:211  "128" */ 0x80, /** @src 68:5905:6285  "assembly (\"memory-safe\") {..." */ var_y)
                    var_liquidity := add(var_liquidity, var_y)
                    if lt(var_liquidity, var_y)
                    {
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 68:5905:6285  "assembly (\"memory-safe\") {..." */ 0x63f1e01f)
                        revert(0x1c, 0x04)
                    }
                }
                /// @src 68:6305:6321  "return liquidity"
                var_liquidity := var_liquidity
            }
            /// @ast-id 57789 @src 78:3931:4059  "function decode(bytes32 z, bool first) internal pure returns (uint128 x) {..."
            function fun_decode(var_z, var_first) -> var_x
            {
                /// @src 78:4021:4052  "first ? decodeX(z) : decodeY(z)"
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 78:4021:4052  "first ? decodeX(z) : decodeY(z)"
                switch var_first
                case 0 {
                    expr := /** @src 78:3480:3548  "assembly (\"memory-safe\") {..." */ shr(128, /** @src 78:4042:4052  "decodeY(z)" */ var_z)
                }
                default /// @src 78:4021:4052  "first ? decodeX(z) : decodeY(z)"
                {
                    expr := /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ and(/** @src 78:4029:4039  "decodeX(z)" */ var_z, /** @src 78:3126:3196  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455)
                }
                /// @src 78:4014:4052  "return first ? decodeX(z) : decodeY(z)"
                var_x := expr
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function checked_add_uint256(x, y) -> sum
            {
                sum := add(x, y)
                if gt(x, sum) { panic_error_0x11() }
            }
            /// @ast-id 60120 @src 82:3667:3881  "function mulShiftRoundUp(uint256 x, uint256 y, uint8 offset) internal pure returns (uint256 result) {..."
            function fun_mulShiftRoundUp(var_x, var_y) -> var_result
            {
                /// @src 82:3786:3817  "mulShiftRoundDown(x, y, offset)"
                let var_result_1 := /** @src -1:-1:-1 */ 0
                /// @src 82:2635:2649  "uint256 result"
                var_result_1 := /** @src -1:-1:-1 */ 0
                /// @src 82:2694:2712  "_getMulProds(x, y)"
                let expr_component, expr_component_1 := fun_getMulProds(/** @src 82:3786:3817  "mulShiftRoundDown(x, y, offset)" */ var_x, var_y)
                /// @src 82:2723:2763  "if (prod0 != 0) result = prod0 >> offset"
                if /** @src 82:2727:2737  "prod0 != 0" */ iszero(iszero(expr_component))
                /// @src 82:2723:2763  "if (prod0 != 0) result = prod0 >> offset"
                {
                    /// @src 82:2739:2763  "result = prod0 >> offset"
                    var_result_1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shr(and(128, 0xff), expr_component)
                }
                /// @src 82:2773:3028  "if (prod1 != 0) {..."
                if /** @src 82:2777:2787  "prod1 != 0" */ iszero(iszero(expr_component_1))
                /// @src 82:2773:3028  "if (prod1 != 0) {..."
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let bits := and(128, 0xff)
                    /// @src 82:2859:2927  "if (prod1 >= 1 << offset) revert Uint256x256Math__MulShiftOverflow()"
                    if /** @src 82:2863:2883  "prod1 >= 1 << offset" */ iszero(lt(expr_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(bits, /** @src 82:2872:2873  "1" */ 0x01)))
                    /// @src 82:2859:2927  "if (prod1 >= 1 << offset) revert Uint256x256Math__MulShiftOverflow()"
                    {
                        /// @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()" */ 0x8e471a8900000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()" */ 4)
                    }
                    /// @src 82:2970:3003  "result += prod1 << (256 - offset)"
                    var_result_1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(var_result_1, shl(and(sub(/** @src 82:2990:2993  "256" */ 0x0100, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ bits), 0xffff), expr_component_1))
                }
                /// @src 82:3777:3817  "result = mulShiftRoundDown(x, y, offset)"
                var_result := /** @src 82:3786:3817  "mulShiftRoundDown(x, y, offset)" */ var_result_1
                /// @src 82:3831:3856  "mulmod(x, y, 1 << offset)"
                let _1 := 0
                _1 := 0
                /// @src 82:3827:3874  "if (mulmod(x, y, 1 << offset) != 0) result += 1"
                if /** @src 82:3831:3861  "mulmod(x, y, 1 << offset) != 0" */ iszero(iszero(/** @src 82:3831:3856  "mulmod(x, y, 1 << offset)" */ mulmod(var_x, var_y, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000)))
                /// @src 82:3827:3874  "if (mulmod(x, y, 1 << offset) != 0) result += 1"
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let sum := add(/** @src 82:3786:3817  "mulShiftRoundDown(x, y, offset)" */ var_result_1, /** @src 82:3844:3845  "1" */ 0x01)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    if gt(/** @src 82:3786:3817  "mulShiftRoundDown(x, y, offset)" */ var_result_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sum) { panic_error_0x11() }
                    /// @src 82:3863:3874  "result += 1"
                    var_result := sum
                }
            }
            /// @ast-id 58429 @src 79:4910:5033  "function safe128(uint256 x) internal pure returns (uint128 y) {..."
            function fun_safe128(var_x) -> var_y
            {
                /// @src 79:4987:5001  "y = uint128(x)"
                var_y := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 79:4991:5001  "uint128(x)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 79:4982:5026  "if ((y = uint128(x)) != x) _revertOverflow()"
                if /** @src 79:4986:5007  "(y = uint128(x)) != x" */ iszero(eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_y, /** @src 79:4986:5007  "(y = uint128(x)) != x" */ var_x))
                /// @src 79:4982:5026  "if ((y = uint128(x)) != x) _revertOverflow()"
                {
                    /// @src 79:300:515  "assembly (\"memory-safe\") {..."
                    mstore(0x00, 0x93dafdf1)
                    revert(0x1c, 0x04)
                }
            }
            /// @ast-id 60200 @src 82:5557:5801  "function shiftDivRoundUp(uint256 x, uint8 offset, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_shiftDivRoundUp(var_x, var_denominator) -> var_result
            {
                /// @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)"
                let var_result_1 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let bits := and(128, 0xff)
                /// @src 82:4861:4932  "return _getEndOfDivRoundDown(x, 1 << offset, denominator, prod0, prod1)"
                var_result_1 := /** @src 82:4868:4932  "_getEndOfDivRoundDown(x, 1 << offset, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(/** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(bits, /** @src 82:4893:4894  "1" */ 0x01), /** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_denominator, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(bits, /** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_x), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shr(and(sub(/** @src 82:4783:4786  "256" */ 0x0100, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ bits), 0xffff), /** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_x))
                /// @src 82:5677:5727  "result = shiftDivRoundDown(x, offset, denominator)"
                var_result := /** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_result_1
                /// @src 82:5741:5776  "mulmod(x, 1 << offset, denominator)"
                if iszero(var_denominator) { panic_error_0x12() }
                /// @src 82:5737:5794  "if (mulmod(x, 1 << offset, denominator) != 0) result += 1"
                if /** @src 82:5741:5781  "mulmod(x, 1 << offset, denominator) != 0" */ iszero(iszero(/** @src 82:5741:5776  "mulmod(x, 1 << offset, denominator)" */ mulmod(var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000, /** @src 82:5741:5776  "mulmod(x, 1 << offset, denominator)" */ var_denominator)))
                /// @src 82:5737:5794  "if (mulmod(x, 1 << offset, denominator) != 0) result += 1"
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let sum := add(/** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_result_1, /** @src 82:5751:5752  "1" */ 0x01)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    if gt(/** @src 82:5686:5727  "shiftDivRoundDown(x, offset, denominator)" */ var_result_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ sum) { panic_error_0x11() }
                    /// @src 82:5783:5794  "result += 1"
                    var_result := sum
                }
            }
            /// @ast-id 57168 @src 74:1109:1548  "function getFeeAmount(uint128 amount, uint24 feeBips) internal pure returns (uint128) {..."
            function fun_getFeeAmount(var_amount, var_feeBips) -> var
            {
                /// @src 74:1248:1271  "uint128(feeBips) * 1e12"
                let expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mul(and(/** @src 74:1248:1264  "uint128(feeBips)" */ var_feeBips, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), /** @src 74:1267:1271  "1e12" */ 0xe8d4a51000), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 74:1307:1337  "Constants.PRECISION - totalFee"
                let expr_1 := /** @src 73:313:317  "1e18" */ sub(0x0de0b6b3a7640000, /** @src 74:1307:1337  "Constants.PRECISION - totalFee" */ expr)
                /// @src 52:205:211  "10_000"
                if eq(/** @src 73:313:317  "1e18" */ 0x0de0b6b3a7640000, /** @src 74:1307:1337  "Constants.PRECISION - totalFee" */ expr)
                /// @src 52:205:211  "10_000"
                { panic_error_0x12() }
                /// @src 74:1455:1531  "return uint128((uint256(amount) * totalFee + denominator - 1) / denominator)"
                var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 52:205:211  "10_000" */ div(/** @src 73:313:317  "1e18" */ add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(mul(and(/** @src 74:1471:1486  "uint256(amount)" */ var_amount, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 74:1471:1497  "uint256(amount) * totalFee" */ expr), /** @src 74:1471:1511  "uint256(amount) * totalFee + denominator" */ expr_1), /** @src 73:313:317  "1e18" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), /** @src 52:205:211  "10_000" */ expr_1), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
            }
            /// @ast-id 57123 @src 74:471:876  "function getFeeAmountFrom(uint128 amountWithFees, uint24 feeBips) internal pure returns (uint128) {..."
            function fun_getFeeAmountFrom(var_amountWithFees, var_feeBips) -> var
            {
                /// @src 74:759:859  "return uint128((uint256(amountWithFees) * totalFee + Constants.PRECISION - 1) / Constants.PRECISION)"
                var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 52:205:211  "10_000" */ div(/** @src 73:313:317  "1e18" */ add(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(and(/** @src 74:775:798  "uint256(amountWithFees)" */ var_amountWithFees, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(mul(and(/** @src 74:622:638  "uint128(feeBips)" */ var_feeBips, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), /** @src 74:641:645  "1e12" */ 0xe8d4a51000), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)), /** @src 73:313:317  "1e18" */ 0x0de0b6b3a763ffff), 0x0de0b6b3a7640000), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
            }
            /// @ast-id 60165 @src 82:4502:4939  "function shiftDivRoundDown(uint256 x, uint8 offset, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_shiftDivRoundDown(var_x, var_denominator) -> var_result
            {
                /// @src 82:4861:4932  "return _getEndOfDivRoundDown(x, 1 << offset, denominator, prod0, prod1)"
                var_result := /** @src 82:4868:4932  "_getEndOfDivRoundDown(x, 1 << offset, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000, /** @src 82:4868:4932  "_getEndOfDivRoundDown(x, 1 << offset, denominator, prod0, prod1)" */ var_denominator, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(128, var_x), shr(128, var_x))
            }
            /// @ast-id 60085 @src 82:2549:3034  "function mulShiftRoundDown(uint256 x, uint256 y, uint8 offset) internal pure returns (uint256 result) {..."
            function fun_mulShiftRoundDown(var_x, var_y) -> var_result
            {
                /// @src 82:2635:2649  "uint256 result"
                var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 82:2694:2712  "_getMulProds(x, y)"
                let expr_component, expr_component_1 := fun_getMulProds(var_x, var_y)
                /// @src 82:2723:2763  "if (prod0 != 0) result = prod0 >> offset"
                if /** @src 82:2727:2737  "prod0 != 0" */ iszero(iszero(expr_component))
                /// @src 82:2723:2763  "if (prod0 != 0) result = prod0 >> offset"
                {
                    /// @src 82:2739:2763  "result = prod0 >> offset"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shr(128, expr_component)
                }
                /// @src 82:2773:3028  "if (prod1 != 0) {..."
                if /** @src 82:2777:2787  "prod1 != 0" */ iszero(iszero(expr_component_1))
                /// @src 82:2773:3028  "if (prod1 != 0) {..."
                {
                    /// @src 82:2859:2927  "if (prod1 >= 1 << offset) revert Uint256x256Math__MulShiftOverflow()"
                    if /** @src 82:2863:2883  "prod1 >= 1 << offset" */ iszero(lt(expr_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000))
                    /// @src 82:2859:2927  "if (prod1 >= 1 << offset) revert Uint256x256Math__MulShiftOverflow()"
                    {
                        /// @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()" */ 0x8e471a8900000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:2892:2927  "Uint256x256Math__MulShiftOverflow()" */ 4)
                    }
                    /// @src 82:2970:3003  "result += prod1 << (256 - offset)"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(var_result, shl(128, expr_component_1))
                }
            }
            /// @ast-id 59996 @src 82:872:1119  "function mulDivRoundDown(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_mulDivRoundDown(var_x, var_y, var_denominator) -> var_result
            {
                /// @src 82:1022:1040  "_getMulProds(x, y)"
                let expr_59985_component, expr_component := fun_getMulProds(var_x, var_y)
                /// @src 82:1051:1112  "return _getEndOfDivRoundDown(x, y, denominator, prod0, prod1)"
                var_result := /** @src 82:1058:1112  "_getEndOfDivRoundDown(x, y, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(var_x, var_y, var_denominator, expr_59985_component, expr_component)
            }
            /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
            function shift_left_uint256_uint24(bits) -> result
            {
                result := shl(and(bits, 0xffffff), /** @src 80:2202:2203  "1" */ 0x01)
            }
            /// @ast-id 59124 @src 80:1862:2714  "function remove(..."
            function fun_remove(var_level0, var_level1_58989_slot, var_level2_58993_slot, var_id) -> var, var_1
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := shr(/** @src 80:2112:2113  "8" */ 0x08, /** @src 80:2097:2108  "uint256(id)" */ var_id)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let result := and(_1, 65535)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ result)
                mstore(0x20, var_level2_58993_slot)
                let _2 := sload(keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40))
                /// @src 80:2184:2230  "leaves & ~bytes32(1 << (id & type(uint8).max))"
                let expr := and(_2, /** @src 80:2193:2230  "~bytes32(1 << (id & type(uint8).max))" */ not(/** @src 80:2202:2229  "1 << (id & type(uint8).max)" */ shift_left_uint256_uint24(/** @src 80:2208:2228  "id & type(uint8).max" */ and(var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff))))
                /// @src 80:2241:2675  "if (leaves != newLeaves) {..."
                if /** @src 80:2245:2264  "leaves != newLeaves" */ iszero(eq(_2, expr))
                /// @src 80:2241:2675  "if (leaves != newLeaves) {..."
                {
                    /// @src 55:1449:1456  "100_000"
                    sstore(/** @src 80:2280:2292  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_58993_slot, result), /** @src 55:1449:1456  "100_000" */ expr)
                    /// @src 80:2319:2629  "if (newLeaves == 0) {..."
                    if /** @src 80:2323:2337  "newLeaves == 0" */ iszero(expr)
                    /// @src 80:2319:2629  "if (newLeaves == 0) {..."
                    {
                        /// @src 80:2372:2381  "key2 >> 8"
                        let expr_1 := shift_right_uint256_uint8(result)
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _3 := sload(/** @src 80:2411:2423  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_58989_slot, expr_1))
                        /// @src 80:2411:2474  "level1[key1] & ~bytes32(1 << (uint256(key2) & type(uint8).max))"
                        let expr_2 := and(_3, /** @src 80:2426:2474  "~bytes32(1 << (uint256(key2) & type(uint8).max))" */ not(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(/** @src 80:2441:2472  "uint256(key2) & type(uint8).max" */ and(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, 0xff), /** @src 80:2202:2203  "1" */ 0x01)))
                        /// @src 55:1449:1456  "100_000"
                        sstore(/** @src 80:2493:2505  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_58989_slot, expr_1), /** @src 55:1449:1456  "100_000" */ expr_2)
                        /// @src 80:2536:2614  "if (newLeaves == 0) level0 &= ~bytes32(1 << (uint256(key1) & type(uint8).max))"
                        if /** @src 80:2540:2554  "newLeaves == 0" */ iszero(expr_2)
                        /// @src 80:2536:2614  "if (newLeaves == 0) level0 &= ~bytes32(1 << (uint256(key1) & type(uint8).max))"
                        {
                            /// @src 80:2556:2614  "level0 &= ~bytes32(1 << (uint256(key1) & type(uint8).max))"
                            var_level0 := and(var_level0, /** @src 80:2566:2614  "~bytes32(1 << (uint256(key1) & type(uint8).max))" */ not(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(/** @src 80:2581:2612  "uint256(key1) & type(uint8).max" */ and(/** @src 80:2581:2594  "uint256(key1)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff), /** @src 80:2202:2203  "1" */ 0x01)))
                        }
                    }
                    /// @src 80:2643:2664  "return (true, level0)"
                    var := /** @src 80:2202:2203  "1" */ 0x01
                    /// @src 80:2643:2664  "return (true, level0)"
                    var_1 := var_level0
                    leave
                }
                /// @src 80:2685:2707  "return (false, level0)"
                var := /** @src -1:-1:-1 */ 0
                /// @src 80:2685:2707  "return (false, level0)"
                var_1 := var_level0
            }
            /// @ast-id 59732 @src 80:7361:7541  "function _closestBitLeft(bytes32 leaves, uint8 bit) private pure returns (uint256) {..."
            function fun_closestBitLeft(var_leaves, var_bit) -> var
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(add(/** @src 80:7516:7523  "bit + 1" */ var_bit, /** @src 80:7522:7523  "1" */ 0x01), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff)
                let result := shr(_1, var_leaves)
                /// @src 76:1301:1360  "(x == 0) ? type(uint256).max : leastSignificantBit(x) + bit"
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 76:1301:1360  "(x == 0) ? type(uint256).max : leastSignificantBit(x) + bit"
                switch /** @src 76:1302:1308  "x == 0" */ iszero(result)
                case /** @src 76:1301:1360  "(x == 0) ? type(uint256).max : leastSignificantBit(x) + bit" */ 0 {
                    expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(add(/** @src 76:1332:1354  "leastSignificantBit(x)" */ fun_leastSignificantBit(result), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1), 0xff)
                }
                default /// @src 76:1301:1360  "(x == 0) ? type(uint256).max : leastSignificantBit(x) + bit"
                {
                    expr := /** @src 76:1312:1329  "type(uint256).max" */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                }
                /// @src 80:7478:7524  "return uint256(leaves).closestBitLeft(bit + 1)"
                var := expr
            }
            /// @ast-id 57484 @src 76:2784:3971  "function leastSignificantBit(uint256 x) internal pure returns (uint8 lsb) {..."
            function fun_leastSignificantBit(var_x) -> var_lsb
            {
                /// @src 76:2847:2856  "uint8 lsb"
                var_lsb := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 76:2868:3965  "assembly (\"memory-safe\") {..."
                let usr$sx := shl(128, var_x)
                if iszero(iszero(usr$sx))
                {
                    var_lsb := 128
                    var_x := usr$sx
                }
                let usr$sx_1 := shl(64, var_x)
                if iszero(iszero(usr$sx_1))
                {
                    var_x := usr$sx_1
                    var_lsb := add(var_lsb, 64)
                }
                let usr$sx_2 := shl(32, var_x)
                if iszero(iszero(usr$sx_2))
                {
                    var_x := usr$sx_2
                    var_lsb := add(var_lsb, 32)
                }
                let usr$sx_3 := shl(16, var_x)
                if iszero(iszero(usr$sx_3))
                {
                    var_x := usr$sx_3
                    var_lsb := add(var_lsb, 16)
                }
                let usr$sx_4 := shl(8, var_x)
                if iszero(iszero(usr$sx_4))
                {
                    var_x := usr$sx_4
                    var_lsb := add(var_lsb, 8)
                }
                let usr$sx_5 := shl(4, var_x)
                if iszero(iszero(usr$sx_5))
                {
                    var_x := usr$sx_5
                    var_lsb := add(var_lsb, 4)
                }
                let usr$sx_6 := shl(2, var_x)
                if iszero(iszero(usr$sx_6))
                {
                    var_x := usr$sx_6
                    var_lsb := add(var_lsb, 2)
                }
                if iszero(iszero(shl(1, var_x))) { var_lsb := add(var_lsb, 1) }
                var_lsb := sub(255, var_lsb)
            }
            /// @ast-id 59710 @src 80:6851:7033  "function _closestBitRight(bytes32 leaves, uint8 bit) private pure returns (uint256) {..."
            function fun_closestBitRight(var_leaves, var_bit) -> var
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := and(sub(0xff, and(add(/** @src 80:7008:7015  "bit - 1" */ var_bit, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff), 0xff)), 0xff)
                let result := shl(_1, var_leaves)
                /// @src 76:760:820  "(x == 0) ? type(uint256).max : mostSignificantBit(x) - shift"
                let expr := /** @src -1:-1:-1 */ 0
                /// @src 76:760:820  "(x == 0) ? type(uint256).max : mostSignificantBit(x) - shift"
                switch /** @src 76:761:767  "x == 0" */ iszero(result)
                case /** @src 76:760:820  "(x == 0) ? type(uint256).max : mostSignificantBit(x) - shift" */ 0 {
                    expr := /** @src 73:313:317  "1e18" */ sub(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 76:791:812  "mostSignificantBit(x)" */ fun_mostSignificantBit(result), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff), /** @src 73:313:317  "1e18" */ _1)
                }
                default /// @src 76:760:820  "(x == 0) ? type(uint256).max : mostSignificantBit(x) - shift"
                {
                    expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                }
                /// @src 80:6969:7016  "return uint256(leaves).closestBitRight(bit - 1)"
                var := expr
            }
            /// @ast-id 57474 @src 76:1585:2572  "function mostSignificantBit(uint256 x) internal pure returns (uint8 msb) {..."
            function fun_mostSignificantBit(var_x) -> var_msb
            {
                /// @src 76:1647:1656  "uint8 msb"
                var_msb := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 76:1668:2566  "assembly (\"memory-safe\") {..."
                if gt(var_x, 0xffffffffffffffffffffffffffffffff)
                {
                    var_x := shr(128, var_x)
                    var_msb := 128
                }
                if gt(var_x, 0xffffffffffffffff)
                {
                    var_x := shr(64, var_x)
                    var_msb := add(var_msb, 64)
                }
                if gt(var_x, 0xffffffff)
                {
                    var_x := shr(32, var_x)
                    var_msb := add(var_msb, 32)
                }
                if gt(var_x, 0xffff)
                {
                    var_x := shr(16, var_x)
                    var_msb := add(var_msb, 16)
                }
                if gt(var_x, 0xff)
                {
                    var_x := shr(8, var_x)
                    var_msb := add(var_msb, 8)
                }
                if gt(var_x, 0xf)
                {
                    var_x := shr(4, var_x)
                    var_msb := add(var_msb, 4)
                }
                if gt(var_x, 0x3)
                {
                    var_x := shr(2, var_x)
                    var_msb := add(var_msb, 2)
                }
                if gt(var_x, 0x1) { var_msb := add(var_msb, 0x1) }
            }
            /// @ast-id 57654 @src 77:3050:3498  "function getAmountsAndId(bytes32 config, bytes32 amountsIn) internal pure returns (bytes32, uint24) {..."
            function fun_getAmountsAndId(var_config, var_amountsIn) -> var, var_1
            {
                /// @src 77:2193:2235  "config.decodeUint64(OFFSET_DISTRIBUTION_X)"
                let expr := /** @src 61:3842:3938  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 77:705:707  "88" */ 0x58, /** @src 77:2193:2235  "config.decodeUint64(OFFSET_DISTRIBUTION_X)" */ var_config), /** @src 61:3842:3938  "assembly (\"memory-safe\") {..." */ 18446744073709551615)
                /// @src 77:2261:2303  "config.decodeUint64(OFFSET_DISTRIBUTION_Y)"
                let expr_1 := /** @src 61:3842:3938  "assembly (\"memory-safe\") {..." */ and(shr(/** @src 77:648:650  "24" */ 0x18, /** @src 77:2261:2303  "config.decodeUint64(OFFSET_DISTRIBUTION_Y)" */ var_config), /** @src 61:3842:3938  "assembly (\"memory-safe\") {..." */ 18446744073709551615)
                /// @src 77:2363:2427  "uint256(config) > type(uint152).max || distributionX > PRECISION"
                let expr_2 := /** @src 77:2363:2398  "uint256(config) > type(uint152).max" */ gt(var_config, /** @src 77:592:593  "0" */ 0xffffffffffffffffffffffffffffffffffffff)
                /// @src 77:2363:2427  "uint256(config) > type(uint152).max || distributionX > PRECISION"
                if iszero(expr_2)
                {
                    expr_2 := /** @src 77:2402:2427  "distributionX > PRECISION" */ gt(/** @src 77:751:755  "1e18" */ expr, /** @src 73:313:317  "1e18" */ 0x0de0b6b3a7640000)
                }
                /// @src 77:2363:2456  "uint256(config) > type(uint152).max || distributionX > PRECISION || distributionY > PRECISION"
                let expr_3 := expr_2
                if iszero(expr_2)
                {
                    expr_3 := /** @src 77:2431:2456  "distributionY > PRECISION" */ gt(/** @src 77:751:755  "1e18" */ expr_1, /** @src 73:313:317  "1e18" */ 0x0de0b6b3a7640000)
                }
                /// @src 77:2359:2530  "if (uint256(config) > type(uint152).max || distributionX > PRECISION || distributionY > PRECISION) {..."
                if expr_3
                {
                    /// @src 77:2479:2519  "LiquidityConfigurations__InvalidConfig()"
                    mstore(/** @src -1:-1:-1 */ 0, /** @src 77:2479:2519  "LiquidityConfigurations__InvalidConfig()" */ 0xeea4aafe00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src -1:-1:-1 */ 0, /** @src 77:2479:2519  "LiquidityConfigurations__InvalidConfig()" */ 4)
                }
                /// @src 77:3465:3491  "return (x1.encode(x2), id)"
                var := /** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ or(and(/** @src 77:3305:3455  "assembly (\"memory-safe\") {..." */ div(mul(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ and(var_amountsIn, 340282366920938463463374607431768211455), /** @src 77:3305:3455  "assembly (\"memory-safe\") {..." */ expr), 1000000000000000000), /** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ 340282366920938463463374607431768211455), /** @src 78:1105:1197  "assembly (\"memory-safe\") {..." */ shl(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ 128, /** @src 77:3305:3455  "assembly (\"memory-safe\") {..." */ div(mul(/** @src 78:2740:2844  "assembly (\"memory-safe\") {..." */ shr(128, var_amountsIn), /** @src 77:3305:3455  "assembly (\"memory-safe\") {..." */ expr_1), 1000000000000000000)))
                /// @src 77:3465:3491  "return (x1.encode(x2), id)"
                var_1 := /** @src 61:3376:3472  "assembly (\"memory-safe\") {..." */ and(var_config, 16777215)
            }
            /// @ast-id 56776 @src 70:17347:19654  "function _updateBin(State storage self, MintParams memory params, uint24 id, bytes32 maxAmountsInToBin)..."
            function fun_updateBin(var_self_56574_slot, var_params_56577_mpos, var_id, var_maxAmountsInToBin) -> var_shares, var_amountsIn, var_amountsInToBin, var_feeAmountToProtocol, var_compositionFeeAmount
            {
                /// @src 70:17593:17620  "bytes32 feeAmountToProtocol"
                var_feeAmountToProtocol := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:17634:17662  "bytes32 compositionFeeAmount"
                var_compositionFeeAmount := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 70:17687:17723  "Slot0 memory slot0Cache = self.slot0"
                let var_slot0Cache_56596_mpos := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ read_from_storage_reference_type_struct_Slot0(/** @src 70:17687:17723  "Slot0 memory slot0Cache = self.slot0" */ var_self_56574_slot)
                /// @src 70:17751:17770  "slot0Cache.activeId"
                let _1 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:17751:17770  "slot0Cache.activeId" */ var_slot0Cache_56596_mpos))
                /// @src 70:17802:17819  "self.reserveOfBin"
                let _2 := add(var_self_56574_slot, 1)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := sload(/** @src 70:17802:17823  "self.reserveOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_2, var_id))
                /// @src 70:17850:17883  "id.getPriceFromId(params.binStep)"
                let expr := fun_getPriceFromId(var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ cleanup_from_storage_uint16(mload(/** @src 70:17868:17882  "params.binStep" */ add(var_params_56577_mpos, 32))))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _4 := sload(/** @src 70:17910:17929  "self.shareOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:17910:17925  "self.shareOfBin" */ add(var_self_56574_slot, 2), /** @src 70:17910:17929  "self.shareOfBin[id]" */ var_id))
                /// @src 70:17962:18038  "binReserves.getSharesAndEffectiveAmountsIn(maxAmountsInToBin, price, supply)"
                let expr_56635_component, expr_56635_component_1 := fun_getSharesAndEffectiveAmountsIn(_3, var_maxAmountsInToBin, expr, _4)
                /// @src 70:17940:18038  "(shares, amountsIn) = binReserves.getSharesAndEffectiveAmountsIn(maxAmountsInToBin, price, supply)"
                var_amountsIn := expr_56635_component_1
                var_shares := expr_56635_component
                /// @src 70:18048:18074  "amountsInToBin = amountsIn"
                var_amountsInToBin := expr_56635_component_1
                /// @src 70:18085:19449  "if (id == activeId) {..."
                switch /** @src 70:18089:18103  "id == activeId" */ eq(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 70:18089:18103  "id == activeId" */ var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), and(/** @src 70:18089:18103  "id == activeId" */ _1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff))
                case /** @src 70:18085:19449  "if (id == activeId) {..." */ 0 {
                    /// @src 70:19435:19437  "id"
                    fun_verifyAmounts(expr_56635_component_1, _1, var_id)
                }
                default /// @src 70:18085:19449  "if (id == activeId) {..."
                {
                    /// @src 71:648:650  "32"
                    let _5 := cleanup_from_storage_uint24(mload(/** @src 70:18338:18358  "params.lpFeeOverride" */ add(var_params_56577_mpos, 64)))
                    /// @src 70:18338:18371  "params.lpFeeOverride.isOverride()"
                    let expr_1 := fun_isOverride(/** @src 71:648:650  "32" */ _5)
                    /// @src 70:18338:18501  "params.lpFeeOverride.isOverride()..."
                    let expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 70:18338:18501  "params.lpFeeOverride.isOverride()..."
                    switch expr_1
                    case 0 {
                        expr_2 := /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:18485:18501  "slot0Cache.lpFee" */ add(var_slot0Cache_56596_mpos, /** @src 70:18338:18358  "params.lpFeeOverride" */ 64)))
                    }
                    default /// @src 70:18338:18501  "params.lpFeeOverride.isOverride()..."
                    {
                        expr_2 := /** @src 70:18390:18466  "params.lpFeeOverride.removeOverrideAndValidate(LPFeeLibrary.TEN_PERCENT_FEE)" */ fun_removeOverrideAndValidate(_5)
                    }
                    /// @src 70:18600:18694  "binReserves.getCompositionFeesAmount(slot0Cache.protocolFee, lpFee, amountsIn, supply, shares)"
                    let expr_56676_component, expr_56676_component_1 := fun_getCompositionFeesAmount(_3, /** @src 71:648:650  "32" */ cleanup_from_storage_uint24(mload(/** @src 70:18637:18659  "slot0Cache.protocolFee" */ add(var_slot0Cache_56596_mpos, /** @src 70:17868:17882  "params.binStep" */ 32))), /** @src 70:18600:18694  "binReserves.getCompositionFeesAmount(slot0Cache.protocolFee, lpFee, amountsIn, supply, shares)" */ expr_2, expr_56635_component_1, _4, expr_56635_component)
                    /// @src 70:18548:18694  "(feesAmount, feeAmountToProtocol) =..."
                    var_feeAmountToProtocol := expr_56676_component_1
                    /// @src 70:18708:18741  "compositionFeeAmount = feesAmount"
                    var_compositionFeeAmount := expr_56676_component
                    /// @src 70:18755:19371  "if (feesAmount != 0) {..."
                    if /** @src 70:18759:18774  "feesAmount != 0" */ iszero(iszero(expr_56676_component))
                    /// @src 70:18755:19371  "if (feesAmount != 0) {..."
                    {
                        /// @src 70:18840:18885  "amountsIn.sub(feesAmount).getLiquidity(price)"
                        let expr_3 := fun_getLiquidity_53867(/** @src 70:18840:18865  "amountsIn.sub(feesAmount)" */ fun_sub(expr_56635_component_1, expr_56676_component), /** @src 70:18840:18885  "amountsIn.sub(feesAmount).getLiquidity(price)" */ expr)
                        /// @src 70:19133:19193  "shares = userLiquidity.mulDivRoundDown(supply, binLiquidity)"
                        var_shares := /** @src 70:19142:19193  "userLiquidity.mulDivRoundDown(supply, binLiquidity)" */ fun_mulDivRoundDown(expr_3, _4, /** @src 70:19039:19111  "binReserves.add(feesAmount.sub(feeAmountToProtocol)).getLiquidity(price)" */ fun_getLiquidity_53867(/** @src 70:19039:19091  "binReserves.add(feesAmount.sub(feeAmountToProtocol))" */ fun_add_57825(_3, /** @src 70:19055:19090  "feesAmount.sub(feeAmountToProtocol)" */ fun_sub(expr_56676_component, expr_56676_component_1)), /** @src 70:19039:19111  "binReserves.add(feesAmount.sub(feeAmountToProtocol)).getLiquidity(price)" */ expr))
                        /// @src 70:19230:19357  "if (feeAmountToProtocol != 0) {..."
                        if /** @src 70:19234:19258  "feeAmountToProtocol != 0" */ iszero(iszero(expr_56676_component_1))
                        /// @src 70:19230:19357  "if (feeAmountToProtocol != 0) {..."
                        {
                            /// @src 70:19282:19338  "amountsInToBin = amountsInToBin.sub(feeAmountToProtocol)"
                            var_amountsInToBin := /** @src 70:19299:19338  "amountsInToBin.sub(feeAmountToProtocol)" */ fun_sub(expr_56635_component_1, expr_56676_component_1)
                        }
                    }
                }
                /// @src 70:19463:19497  "shares == 0 || amountsInToBin == 0"
                let expr_4 := /** @src 70:19463:19474  "shares == 0" */ iszero(var_shares)
                /// @src 70:19463:19497  "shares == 0 || amountsInToBin == 0"
                if iszero(expr_4)
                {
                    expr_4 := /** @src 70:19478:19497  "amountsInToBin == 0" */ iszero(var_amountsInToBin)
                }
                /// @src 70:19459:19529  "if (shares == 0 || amountsInToBin == 0) revert BinPool__ZeroShares(id)"
                if expr_4
                {
                    /// @src 70:19506:19529  "BinPool__ZeroShares(id)"
                    mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:19506:19529  "BinPool__ZeroShares(id)" */ 0xbfc0118c00000000000000000000000000000000000000000000000000000000)
                    revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 70:19506:19529  "BinPool__ZeroShares(id)" */ abi_encode_uint24_22074(var_id))
                }
                /// @src 70:19539:19581  "if (supply == 0) _addBinIdToTree(self, id)"
                if /** @src 70:19543:19554  "supply == 0" */ iszero(_4)
                /// @src 70:19539:19581  "if (supply == 0) _addBinIdToTree(self, id)"
                {
                    /// @src 70:19578:19580  "id"
                    fun_addBinIdToTree(var_self_56574_slot, var_id)
                }
                /// @src 55:1449:1456  "100_000"
                sstore(/** @src 70:19592:19613  "self.reserveOfBin[id]" */ mapping_index_access_mapping_uint256_uint256_of_uint24(_2, var_id), /** @src 70:19616:19647  "binReserves.add(amountsInToBin)" */ fun_add_57825(_3, var_amountsInToBin))
            }
            /// @ast-id 56850 @src 70:20058:20279  "function _addShare(State storage self, address owner, uint24 binId, bytes32 salt, uint256 shares) internal {..."
            function fun_addShare(var_self_56817_slot, var_owner, var_binId, var_salt, var_shares)
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(/** @src -1:-1:-1 */ 0, /** @src 72:2376:2416  "calculatePositionKey(owner, binId, salt)" */ fun_calculatePositionKey(/** @src 70:20175:20213  "self.positions.get(owner, binId, salt)" */ var_owner, var_binId, var_salt))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                mstore(0x20, /** @src 70:20175:20189  "self.positions" */ add(var_self_56817_slot, 3))
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let dataSlot := keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40)
                let _1 := sload(/** @src 72:2530:2549  "self.share += share" */ dataSlot)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let sum := add(_1, var_shares)
                if gt(_1, sum) { panic_error_0x11() }
                /// @src 55:1449:1456  "100_000"
                sstore(dataSlot, sum)
                /// @src 70:20240:20262  "self.shareOfBin[binId]"
                let _2 := mapping_index_access_mapping_uint256_uint256_of_uint24(/** @src 70:20240:20255  "self.shareOfBin" */ add(var_self_56817_slot, 2), /** @src 70:20240:20262  "self.shareOfBin[binId]" */ var_binId)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _3 := sload(/** @src 70:20240:20272  "self.shareOfBin[binId] += shares" */ _2)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let sum_1 := add(_3, var_shares)
                if gt(_3, sum_1) { panic_error_0x11() }
                /// @src 55:1449:1456  "100_000"
                sstore(_2, sum_1)
            }
            /// @ast-id 60336 @src 82:7108:10535  "function _getEndOfDivRoundDown(uint256 x, uint256 y, uint256 denominator, uint256 prod0, uint256 prod1)..."
            function fun_getEndOfDivRoundDown(var_x, var_y, var_denominator, var_prod0, var_prod1) -> var_result
            {
                /// @src 82:7258:7272  "uint256 result"
                var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 82:7346:10529  "if (prod1 == 0) {..."
                switch /** @src 82:7350:7360  "prod1 == 0" */ iszero(var_prod1)
                case /** @src 82:7346:10529  "if (prod1 == 0) {..." */ 0 {
                    /// @src 82:7564:7630  "if (prod1 >= denominator) revert Uint256x256Math__MulDivOverflow()"
                    if /** @src 82:7568:7588  "prod1 >= denominator" */ iszero(lt(var_prod1, var_denominator))
                    /// @src 82:7564:7630  "if (prod1 >= denominator) revert Uint256x256Math__MulDivOverflow()"
                    {
                        /// @src 82:7597:7630  "Uint256x256Math__MulDivOverflow()"
                        mstore(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:7597:7630  "Uint256x256Math__MulDivOverflow()" */ 0x13eae71500000000000000000000000000000000000000000000000000000000)
                        revert(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:7597:7630  "Uint256x256Math__MulDivOverflow()" */ 4)
                    }
                    /// @src 82:7760:8076  "assembly (\"memory-safe\") {..."
                    let var_remainder := mulmod(var_x, var_y, var_denominator)
                    /// @src 82:8429:8461  "denominator & (~denominator + 1)"
                    let expr := and(var_denominator, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(/** @src 82:8444:8456  "~denominator" */ not(var_denominator), /** @src 82:8459:8460  "1" */ 0x01))
                    /// @src 82:8479:8923  "assembly (\"memory-safe\") {..."
                    let var_denominator_1 := div(var_denominator, expr)
                    /// @src 82:9371:9392  "(3 * denominator) ^ 2"
                    let expr_1 := xor(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9372:9373  "3" */ 0x03, /** @src 82:9372:9387  "3 * denominator" */ var_denominator_1), /** @src 82:9391:9392  "2" */ 0x02)
                    /// @src 82:9620:9656  "inverse *= 2 - denominator * inverse"
                    let expr_2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9620:9656  "inverse *= 2 - denominator * inverse" */ expr_1, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9635:9656  "denominator * inverse" */ var_denominator_1, expr_1)))
                    /// @src 82:9693:9729  "inverse *= 2 - denominator * inverse"
                    let expr_3 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9693:9729  "inverse *= 2 - denominator * inverse" */ expr_2, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9708:9729  "denominator * inverse" */ var_denominator_1, expr_2)))
                    /// @src 82:9767:9803  "inverse *= 2 - denominator * inverse"
                    let expr_4 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9767:9803  "inverse *= 2 - denominator * inverse" */ expr_3, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9782:9803  "denominator * inverse" */ var_denominator_1, expr_3)))
                    /// @src 82:9841:9877  "inverse *= 2 - denominator * inverse"
                    let expr_5 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9841:9877  "inverse *= 2 - denominator * inverse" */ expr_4, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9856:9877  "denominator * inverse" */ var_denominator_1, expr_4)))
                    /// @src 82:9915:9951  "inverse *= 2 - denominator * inverse"
                    let expr_6 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9915:9951  "inverse *= 2 - denominator * inverse" */ expr_5, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9930:9951  "denominator * inverse" */ var_denominator_1, expr_5)))
                    /// @src 82:10480:10504  "result = prod0 * inverse"
                    var_result := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:8996:9020  "prod0 |= prod1 * lpotdod" */ or(/** @src 82:8479:8923  "assembly (\"memory-safe\") {..." */ div(/** @src 82:7760:8076  "assembly (\"memory-safe\") {..." */ sub(var_prod0, var_remainder), /** @src 82:8479:8923  "assembly (\"memory-safe\") {..." */ expr), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:7760:8076  "assembly (\"memory-safe\") {..." */ sub(var_prod1, gt(var_remainder, var_prod0)), /** @src 82:8479:8923  "assembly (\"memory-safe\") {..." */ add(div(sub(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0, /** @src 82:8479:8923  "assembly (\"memory-safe\") {..." */ expr), expr), /** @src 82:8459:8460  "1" */ 0x01))), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:9990:10026  "inverse *= 2 - denominator * inverse" */ expr_6, /** @src 73:313:317  "1e18" */ sub(/** @src 82:9391:9392  "2" */ 0x02, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(/** @src 82:10005:10026  "denominator * inverse" */ var_denominator_1, expr_6))))
                }
                default /// @src 82:7346:10529  "if (prod1 == 0) {..."
                {
                    /// @src 82:7404:7432  "result = prod0 / denominator"
                    var_result := /** @src 82:7413:7432  "prod0 / denominator" */ checked_div_uint256(var_prod0, var_denominator)
                }
            }
            /// @ast-id 60214 @src 82:6113:6676  "function _getMulProds(uint256 x, uint256 y) private pure returns (uint256 prod0, uint256 prod1) {..."
            function fun_getMulProds(var_x, var_y) -> var_prod0, var_prod1
            {
                /// @src 82:6504:6670  "assembly (\"memory-safe\") {..."
                let usr$mm := mulmod(var_x, var_y, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
                var_prod0 := mul(var_x, var_y)
                var_prod1 := sub(sub(usr$mm, var_prod0), lt(usr$mm, var_prod0))
            }
            /// @ast-id 53842 @src 68:2769:4330  "function getSharesAndEffectiveAmountsIn(bytes32 binReserves, bytes32 amountsIn, uint256 price, uint256 totalSupply)..."
            function fun_getSharesAndEffectiveAmountsIn(var_binReserves, var_amountsIn, var_price, var_totalSupply) -> var_shares, var_effectiveAmountsIn
            {
                /// @src 68:3015:3033  "amountsIn.decode()"
                let expr_53703_component, expr_53703_component_1 := fun_decode_57749(var_amountsIn)
                /// @src 68:2990:3033  "(uint256 x, uint256 y) = amountsIn.decode()"
                let var_x := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:2990:3033  "(uint256 x, uint256 y) = amountsIn.decode()" */ expr_53703_component, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 68:2990:3033  "(uint256 x, uint256 y) = amountsIn.decode()"
                let var_y := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:2990:3033  "(uint256 x, uint256 y) = amountsIn.decode()" */ expr_53703_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 68:3068:3093  "getLiquidity(x, y, price)"
                let expr := fun_getLiquidity(var_x, var_y, var_price)
                /// @src 68:3107:3145  "totalSupply == 0 || userLiquidity == 0"
                let expr_1 := /** @src 68:3107:3123  "totalSupply == 0" */ iszero(var_totalSupply)
                /// @src 68:3107:3145  "totalSupply == 0 || userLiquidity == 0"
                if iszero(expr_1)
                {
                    expr_1 := /** @src 68:3127:3145  "userLiquidity == 0" */ iszero(expr)
                }
                /// @src 68:3103:3180  "if (totalSupply == 0 || userLiquidity == 0) return (userLiquidity, amountsIn)"
                if expr_1
                {
                    /// @src 68:3147:3180  "return (userLiquidity, amountsIn)"
                    var_shares := expr
                    var_effectiveAmountsIn := var_amountsIn
                    leave
                }
                /// @src 68:3247:3279  "getLiquidity(binReserves, price)"
                let expr_2 := fun_getLiquidity_53867(var_binReserves, var_price)
                /// @src 68:3289:3345  "if (binLiquidity == 0) return (userLiquidity, amountsIn)"
                if /** @src 68:3293:3310  "binLiquidity == 0" */ iszero(expr_2)
                /// @src 68:3289:3345  "if (binLiquidity == 0) return (userLiquidity, amountsIn)"
                {
                    /// @src 68:3312:3345  "return (userLiquidity, amountsIn)"
                    var_shares := expr
                    var_effectiveAmountsIn := var_amountsIn
                    leave
                }
                /// @src 68:3365:3421  "userLiquidity.mulDivRoundDown(totalSupply, binLiquidity)"
                let expr_3 := fun_mulDivRoundDown(expr, var_totalSupply, expr_2)
                /// @src 68:3460:3507  "shares.mulDivRoundUp(binLiquidity, totalSupply)"
                let expr_4 := fun_mulDivRoundUp(expr_3, expr_2, var_totalSupply)
                /// @src 68:3518:4287  "if (userLiquidity > effectiveLiquidity) {..."
                if /** @src 68:3522:3556  "userLiquidity > effectiveLiquidity" */ gt(expr, expr_4)
                /// @src 68:3518:4287  "if (userLiquidity > effectiveLiquidity) {..."
                {
                    /// @src 68:3572:3631  "uint256 deltaLiquidity = userLiquidity - effectiveLiquidity"
                    let var_deltaLiquidity := /** @src 68:3597:3631  "userLiquidity - effectiveLiquidity" */ checked_sub_uint256(expr, expr_4)
                    /// @src 68:3771:3786  "Constants.SCALE"
                    let ret := /** @src -1:-1:-1 */ 0
                    /// @src 73:251:268  "1 << SCALE_OFFSET"
                    ret := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x0100000000000000000000000000000000
                    /// @src 68:3749:4026  "if (deltaLiquidity >= Constants.SCALE) {..."
                    if /** @src 68:3753:3786  "deltaLiquidity >= Constants.SCALE" */ iszero(lt(var_deltaLiquidity, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ ret))
                    /// @src 68:3749:4026  "if (deltaLiquidity >= Constants.SCALE) {..."
                    {
                        /// @src 68:3823:3863  "deltaLiquidity >> Constants.SCALE_OFFSET"
                        let expr_5 := fun_decodeY(var_deltaLiquidity)
                        /// @src 68:3890:3913  "deltaY > y ? y : deltaY"
                        let expr_6 := /** @src 68:3122:3123  "0" */ 0x00
                        /// @src 68:3890:3913  "deltaY > y ? y : deltaY"
                        switch /** @src 68:3890:3900  "deltaY > y" */ gt(expr_5, var_y)
                        case /** @src 68:3890:3913  "deltaY > y ? y : deltaY" */ 0 { expr_6 := expr_5 }
                        default { expr_6 := var_y }
                        /// @src 68:3932:3943  "y -= deltaY"
                        var_y := checked_sub_uint256(var_y, expr_6)
                        /// @src 68:3961:4011  "deltaLiquidity -= deltaY << Constants.SCALE_OFFSET"
                        var_deltaLiquidity := checked_sub_uint256(var_deltaLiquidity, /** @src 68:3979:4011  "deltaY << Constants.SCALE_OFFSET" */ fun_encodeSecond(expr_6))
                    }
                    /// @src 68:4040:4221  "if (deltaLiquidity >= price) {..."
                    if /** @src 68:4044:4067  "deltaLiquidity >= price" */ iszero(lt(var_deltaLiquidity, var_price))
                    /// @src 68:4040:4221  "if (deltaLiquidity >= price) {..."
                    {
                        /// @src 68:4104:4126  "deltaLiquidity / price"
                        let expr_7 := checked_div_uint256(var_deltaLiquidity, var_price)
                        /// @src 68:4153:4176  "deltaX > x ? x : deltaX"
                        let expr_8 := /** @src 68:3122:3123  "0" */ 0x00
                        /// @src 68:4153:4176  "deltaX > x ? x : deltaX"
                        switch /** @src 68:4153:4163  "deltaX > x" */ gt(expr_7, var_x)
                        case /** @src 68:4153:4176  "deltaX > x ? x : deltaX" */ 0 { expr_8 := expr_7 }
                        default { expr_8 := var_x }
                        /// @src 68:4195:4206  "x -= deltaX"
                        var_x := checked_sub_uint256(var_x, expr_8)
                    }
                    /// @src 68:4235:4276  "amountsIn = uint128(x).encode(uint128(y))"
                    var_amountsIn := /** @src 68:4247:4276  "uint128(x).encode(uint128(y))" */ fun_encode(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:4247:4257  "uint128(x)" */ var_x, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:4265:4275  "uint128(y)" */ var_y, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                }
                /// @src 68:4297:4323  "return (shares, amountsIn)"
                var_shares := expr_3
                var_effectiveAmountsIn := var_amountsIn
            }
            /// @ast-id 53943 @src 68:6559:6831  "function verifyAmounts(bytes32 amounts, uint24 activeId, uint24 id) internal pure {..."
            function fun_verifyAmounts(var_amounts, var_activeId, var_id)
            {
                /// @src 68:6656:6669  "id < activeId"
                let _1 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:6656:6669  "id < activeId" */ var_activeId, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 68:6656:6669  "id < activeId"
                let _2 := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:6656:6669  "id < activeId" */ var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff)
                /// @src 68:6656:6693  "id < activeId && (amounts << 128) > 0"
                let expr := /** @src 68:6656:6669  "id < activeId" */ lt(_2, _1)
                /// @src 68:6656:6693  "id < activeId && (amounts << 128) > 0"
                if expr
                {
                    expr := /** @src 68:6673:6693  "(amounts << 128) > 0" */ iszero(iszero(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(/** @src 68:6685:6688  "128" */ 0x80, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ var_amounts)))
                }
                /// @src 68:6655:6753  "(id < activeId && (amounts << 128) > 0) || (id > activeId && uint256(amounts) > type(uint128).max)"
                let expr_1 := expr
                if iszero(expr)
                {
                    /// @src 68:6699:6752  "id > activeId && uint256(amounts) > type(uint128).max"
                    let expr_2 := /** @src 68:6699:6712  "id > activeId" */ gt(_2, _1)
                    /// @src 68:6699:6752  "id > activeId && uint256(amounts) > type(uint128).max"
                    if expr_2
                    {
                        expr_2 := /** @src 68:6716:6752  "uint256(amounts) > type(uint128).max" */ gt(var_amounts, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                    }
                    /// @src 68:6655:6753  "(id < activeId && (amounts << 128) > 0) || (id > activeId && uint256(amounts) > type(uint128).max)"
                    expr_1 := expr_2
                }
                /// @src 68:6651:6825  "if ((id < activeId && (amounts << 128) > 0) || (id > activeId && uint256(amounts) > type(uint128).max)) {..."
                if expr_1
                {
                    /// @src 68:6776:6814  "BinHelper__CompositionFactorFlawed(id)"
                    mstore(0, 0x89ef61c400000000000000000000000000000000000000000000000000000000)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    mstore(/** @src 68:6776:6814  "BinHelper__CompositionFactorFlawed(id)" */ 4, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _2)
                    /// @src 68:6776:6814  "BinHelper__CompositionFactorFlawed(id)"
                    revert(0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 36)
                }
            }
            /// @ast-id 54087 @src 68:7545:9001  "function getCompositionFeesAmount(..."
            function fun_getCompositionFeesAmount(var_binReserves, var_protocolFee, var_lpFee, var_amountsIn, var_totalSupply, var_shares) -> var_feesAmount, var_feeAmountToProtocol
            {
                /// @src 68:7787:7805  "bytes32 feesAmount"
                var_feesAmount := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:7807:7834  "bytes32 feeAmountToProtocol"
                var_feeAmountToProtocol := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                /// @src 68:7846:7876  "if (shares == 0) return (0, 0)"
                if /** @src 68:7850:7861  "shares == 0" */ iszero(var_shares)
                /// @src 68:7846:7876  "if (shares == 0) return (0, 0)"
                {
                    /// @src 68:7863:7876  "return (0, 0)"
                    var_feesAmount := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 68:7863:7876  "return (0, 0)"
                    var_feeAmountToProtocol := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0
                    /// @src 68:7863:7876  "return (0, 0)"
                    leave
                }
                /// @src 68:7924:7942  "amountsIn.decode()"
                let expr_53977_component, expr_53977_component_1 := fun_decode_57749(var_amountsIn)
                /// @src 68:8035:8061  "binReserves.add(amountsIn)"
                let expr := fun_add_57825(var_binReserves, var_amountsIn)
                /// @src 68:8017:8101  "getAmountOutOfBin(binReserves.add(amountsIn), shares, totalSupply + shares).decode()"
                let expr_53994_component, expr_53994_component_1 := fun_decode_57749(/** @src 68:8017:8092  "getAmountOutOfBin(binReserves.add(amountsIn), shares, totalSupply + shares)" */ fun_getAmountOutOfBin(expr, var_shares, /** @src 68:8071:8091  "totalSupply + shares" */ checked_add_uint256(var_totalSupply, var_shares)))
                /// @src 68:8179:8995  "if (receivedAmountX > amountX) {..."
                switch /** @src 68:8183:8208  "receivedAmountX > amountX" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:8183:8208  "receivedAmountX > amountX" */ expr_53994_component, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:8183:8208  "receivedAmountX > amountX" */ expr_53977_component, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                case /** @src 68:8179:8995  "if (receivedAmountX > amountX) {..." */ 0 {
                    /// @src 68:8591:8995  "if (receivedAmountY > amountY) {..."
                    if /** @src 68:8595:8620  "receivedAmountY > amountY" */ gt(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:8595:8620  "receivedAmountY > amountY" */ expr_53994_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), and(/** @src 68:8595:8620  "receivedAmountY > amountY" */ expr_53977_component_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff))
                    /// @src 68:8591:8995  "if (receivedAmountY > amountY) {..."
                    {
                        /// @src 57:973:985  "self & 0xfff"
                        let _1 := and(/** @src 68:8650:8680  "protocolFee.getZeroForOneFee()" */ var_protocolFee, /** @src 57:980:985  "0xfff" */ 0x0fff)
                        /// @src 68:8711:8754  "uint16(protocolFee).calculateSwapFee(lpFee)"
                        let expr_1 := fun_calculateSwapFee(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, /** @src 68:8711:8754  "uint16(protocolFee).calculateSwapFee(lpFee)" */ var_lpFee)
                        /// @src 68:8790:8815  "amountX - receivedAmountX"
                        let expr_2 := checked_sub_uint128(expr_53977_component, expr_53994_component)
                        /// @src 68:8829:8893  "feesAmount = amtSwapped.getCompositionFee(swapFee).encodeFirst()"
                        var_feesAmount := /** @src 68:8842:8893  "amtSwapped.getCompositionFee(swapFee).encodeFirst()" */ convert_uint128_to_uint256(/** @src 68:8842:8879  "amtSwapped.getCompositionFee(swapFee)" */ fun_getCompositionFee(expr_2, expr_1))
                        /// @src 68:8907:8984  "feeAmountToProtocol = amtSwapped.getCompositionFee(protocolFee).encodeFirst()"
                        var_feeAmountToProtocol := /** @src 68:8929:8984  "amtSwapped.getCompositionFee(protocolFee).encodeFirst()" */ convert_uint128_to_uint256(/** @src 68:8929:8970  "amtSwapped.getCompositionFee(protocolFee)" */ fun_getCompositionFee(expr_2, _1))
                    }
                }
                default /// @src 68:8179:8995  "if (receivedAmountX > amountX) {..."
                {
                    /// @src 68:8224:8268  "protocolFee = protocolFee.getOneForZeroFee()"
                    let _2 := cleanup_from_storage_uint16(/** @src 57:1294:1312  "uint16(self >> 12)" */ cleanup_from_storage_uint16(/** @src 57:1301:1311  "self >> 12" */ shift_right_uint24_uint8(/** @src 68:8238:8268  "protocolFee.getOneForZeroFee()" */ var_protocolFee)))
                    /// @src 68:8299:8342  "uint16(protocolFee).calculateSwapFee(lpFee)"
                    let expr_3 := fun_calculateSwapFee(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 68:8299:8318  "uint16(protocolFee)" */ _2, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffff), /** @src 68:8299:8342  "uint16(protocolFee).calculateSwapFee(lpFee)" */ var_lpFee)
                    /// @src 68:8378:8403  "amountY - receivedAmountY"
                    let expr_4 := checked_sub_uint128(expr_53977_component_1, expr_53994_component_1)
                    /// @src 68:8417:8482  "feesAmount = amtSwapped.getCompositionFee(swapFee).encodeSecond()"
                    var_feesAmount := /** @src 68:8430:8482  "amtSwapped.getCompositionFee(swapFee).encodeSecond()" */ fun_encodeSecond(/** @src 68:8430:8467  "amtSwapped.getCompositionFee(swapFee)" */ fun_getCompositionFee(expr_4, expr_3))
                    /// @src 68:8496:8574  "feeAmountToProtocol = amtSwapped.getCompositionFee(protocolFee).encodeSecond()"
                    var_feeAmountToProtocol := /** @src 68:8518:8574  "amtSwapped.getCompositionFee(protocolFee).encodeSecond()" */ fun_encodeSecond(/** @src 68:8518:8559  "amtSwapped.getCompositionFee(protocolFee)" */ fun_getCompositionFee(expr_4, _2))
                }
            }
            /// @ast-id 56876 @src 70:20326:20487  "function _addBinIdToTree(State storage self, uint24 binId) internal {..."
            function fun_addBinIdToTree(var_self_56854_slot, var_binId)
            {
                /// @src 70:20435:20446  "self.level0"
                let _1 := add(var_self_56854_slot, 4)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _2 := sload(/** @src 70:20435:20446  "self.level0" */ _1)
                /// @src 70:20422:20480  "TreeMath.add(self.level0, self.level1, self.level2, binId)"
                let expr_56872_component, expr_56872_component_1 := fun_add(_2, /** @src 70:20448:20459  "self.level1" */ add(var_self_56854_slot, 5), /** @src 70:20461:20472  "self.level2" */ add(var_self_56854_slot, 6), /** @src 70:20422:20480  "TreeMath.add(self.level0, self.level1, self.level2, binId)" */ var_binId)
                /// @src 55:1449:1456  "100_000"
                sstore(_1, expr_56872_component_1)
            }
            /// @ast-id 60029 @src 82:1702:1924  "function mulDivRoundUp(uint256 x, uint256 y, uint256 denominator) internal pure returns (uint256 result) {..."
            function fun_mulDivRoundUp(var_x, var_y, var_denominator) -> var_result
            {
                /// @src 82:1022:1040  "_getMulProds(x, y)"
                let expr_component, expr_component_1 := fun_getMulProds(var_x, var_y)
                /// @src 82:1817:1860  "result = mulDivRoundDown(x, y, denominator)"
                var_result := /** @src 82:1058:1112  "_getEndOfDivRoundDown(x, y, denominator, prod0, prod1)" */ fun_getEndOfDivRoundDown(var_x, var_y, var_denominator, expr_component, expr_component_1)
                /// @src 82:1874:1899  "mulmod(x, y, denominator)"
                if iszero(var_denominator) { panic_error_0x12() }
                /// @src 82:1870:1917  "if (mulmod(x, y, denominator) != 0) result += 1"
                if /** @src 82:1874:1904  "mulmod(x, y, denominator) != 0" */ iszero(iszero(/** @src 82:1874:1899  "mulmod(x, y, denominator)" */ mulmod(var_x, var_y, var_denominator)))
                /// @src 82:1870:1917  "if (mulmod(x, y, denominator) != 0) result += 1"
                {
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    let sum := add(var_result, /** @src 82:1916:1917  "1" */ 0x01)
                    /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                    if gt(var_result, sum) { panic_error_0x11() }
                    /// @src 82:1906:1917  "result += 1"
                    var_result := sum
                }
            }
            /// @ast-id 57216 @src 74:1962:2487  "function getCompositionFee(uint128 amountWithFees, uint24 feeBips) internal pure returns (uint128) {..."
            function fun_getCompositionFee(var_amountWithFees, var_feeBips) -> var
            {
                /// @src 74:2114:2137  "uint128(feeBips) * 1e12"
                let expr := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(mul(and(/** @src 74:2114:2130  "uint128(feeBips)" */ var_feeBips, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffff), /** @src 74:2133:2137  "1e12" */ 0xe8d4a51000), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff)
                /// @src 74:2344:2470  "return..."
                var := /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ and(/** @src 52:205:211  "10_000" */ div(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ mul(mul(and(/** @src 74:2376:2399  "uint256(amountWithFees)" */ var_amountWithFees, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xffffffffffffffffffffffffffffffff), /** @src 74:2376:2410  "uint256(amountWithFees) * totalFee" */ expr), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ add(/** @src 74:2414:2453  "uint256(totalFee) + Constants.PRECISION" */ expr, /** @src 73:313:317  "1e18" */ 0x0de0b6b3a7640000)), /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xc097ce7bc90715b34b9f1000000000), 0xffffffffffffffffffffffffffffffff)
            }
            /// @ast-id 58982 @src 80:796:1630  "function add(..."
            function fun_add(var_level0, var_level1_58850_slot, var_level2_slot, var_id) -> var, var_1
            {
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let _1 := shr(/** @src 80:1043:1044  "8" */ 0x08, /** @src 80:1028:1039  "uint256(id)" */ var_id)
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                let result := and(_1, 65535)
                mstore(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ result)
                mstore(0x20, var_level2_slot)
                let _2 := sload(keccak256(/** @src -1:-1:-1 */ 0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0x40))
                /// @src 80:1132:1159  "1 << (id & type(uint8).max)"
                let result_1 := /** @src -1:-1:-1 */ 0
                /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                result_1 := shl(and(/** @src 80:1138:1158  "id & type(uint8).max" */ and(var_id, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff), 0xffffff), /** @src 80:2202:2203  "1" */ 0x01)
                /// @src 80:1115:1160  "leaves | bytes32(1 << (id & type(uint8).max))"
                let expr := or(_2, /** @src 80:1132:1159  "1 << (id & type(uint8).max)" */ result_1)
                /// @src 80:1171:1591  "if (leaves != newLeaves) {..."
                if /** @src 80:1175:1194  "leaves != newLeaves" */ iszero(eq(_2, expr))
                /// @src 80:1171:1591  "if (leaves != newLeaves) {..."
                {
                    /// @src 55:1449:1456  "100_000"
                    sstore(/** @src 80:1210:1222  "level2[key2]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level2_slot, result), /** @src 55:1449:1456  "100_000" */ expr)
                    /// @src 80:1249:1545  "if (leaves == 0) {..."
                    if /** @src 80:1253:1264  "leaves == 0" */ iszero(_2)
                    /// @src 80:1249:1545  "if (leaves == 0) {..."
                    {
                        /// @src 80:1299:1308  "key2 >> 8"
                        let expr_1 := shift_right_uint256_uint8(result)
                        /// @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..."
                        let _3 := sload(/** @src 80:1335:1347  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_58850_slot, expr_1))
                        /// @src 55:1449:1456  "100_000"
                        sstore(/** @src 80:1366:1378  "level1[key1]" */ mapping_index_access_mapping_userDefinedValueType_PoolId_struct_PoolKey_storage_of_userDefinedValueType_PoolId(var_level1_58850_slot, expr_1), /** @src 80:1381:1437  "leaves | bytes32(1 << (uint256(key2) & type(uint8).max))" */ or(_3, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(/** @src 80:1404:1435  "uint256(key2) & type(uint8).max" */ and(/** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ _1, 0xff), /** @src 80:1132:1133  "1" */ 0x01)))
                        /// @src 80:1456:1530  "if (leaves == 0) level0 |= bytes32(1 << (uint256(key1) & type(uint8).max))"
                        if /** @src 80:1460:1471  "leaves == 0" */ iszero(_3)
                        /// @src 80:1456:1530  "if (leaves == 0) level0 |= bytes32(1 << (uint256(key1) & type(uint8).max))"
                        {
                            /// @src 80:1473:1530  "level0 |= bytes32(1 << (uint256(key1) & type(uint8).max))"
                            var_level0 := or(var_level0, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ shl(/** @src 80:1497:1528  "uint256(key1) & type(uint8).max" */ and(/** @src 80:1497:1510  "uint256(key1)" */ expr_1, /** @src 64:1241:12567  "contract BinPoolManager is IBinPoolManager, ProtocolFees, Extsload {..." */ 0xff), /** @src 80:1132:1133  "1" */ 0x01))
                        }
                    }
                    /// @src 80:1559:1580  "return (true, level0)"
                    var := /** @src 80:1132:1133  "1" */ 0x01
                    /// @src 80:1559:1580  "return (true, level0)"
                    var_1 := var_level0
                    leave
                }
                /// @src 80:1601:1623  "return (false, level0)"
                var := /** @src -1:-1:-1 */ 0
                /// @src 80:1601:1623  "return (false, level0)"
                var_1 := var_level0
            }
        }
        data ".metadata" hex"a2646970667358221220d22fda1b132e3e7db6342b123acefe6a272c51bc8334c11e54a5878ada72731864736f6c634300081a0033"
    }
}
