// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.4;

import "forge-std/Script.sol";
import "src/utils/CreatorTokenTransferValidatorV41.sol";

contract DeployValidator41 is Script {
    function run() public {
        bytes32 saltValue = bytes32(vm.envUint("SALT_TRANSFER_VALIDATOR_41"));
        address expectedAddress = vm.envAddress("EXPECTED_VALIDATOR_41_ADDRESS");
        address validatorConfiguration = vm.envAddress("EXPECTED_VALIDATOR_CONFIGURATION_ADDRESS");
        address eoaRegistry = vm.envAddress("EXPECTED_EOA_REGISTRY_ADDRESS");
        string memory validatorName = vm.envString("VALIDATOR_41_NAME");
        string memory validatorVersion = vm.envString("VALIDATOR_41_VERSION");

        uint256 deployerPrivateKey = vm.envUint("DEPLOYER_KEY");
        address defaultOwner = vm.envAddress("DEFAULT_OWNER_ADDRESS");

        vm.startBroadcast(deployerPrivateKey);
        address validator = address(new CreatorTokenTransferValidatorV41{salt: saltValue}(defaultOwner, eoaRegistry, validatorName, validatorVersion, validatorConfiguration));
        vm.stopBroadcast();

        console.log("CreatorTokenTransferValidatorV41: ", validator);

        if (expectedAddress != validator) {
            // revert("Unexpected deploy address");
        }
    }
}