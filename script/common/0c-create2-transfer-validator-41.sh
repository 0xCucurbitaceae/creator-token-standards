#!/bin/bash
if [ -f .env.common ]
then
  export $(cat .env.common | xargs)
else
    echo "Please set your .env.common file"
    exit 1
fi

constructorArgs=$(cast abi-encode "signature(address,address,string,string,address)" $DEFAULT_OWNER_ADDRESS $EXPECTED_EOA_REGISTRY_ADDRESS $VALIDATOR_41_NAME $VALIDATOR_41_VERSION $EXPECTED_VALIDATOR_CONFIGURATION_ADDRESS)
constructorArgs=${constructorArgs:2}

echo "create2 CreatorTokenTransferValidatorV41 START"
validatorCode="$(forge inspect src/utils/CreatorTokenTransferValidatorV41.sol:CreatorTokenTransferValidatorV41 bytecode)"
validatorInitCode="$validatorCode$constructorArgs"
cast create2 --starts-with 721C00 --case-sensitive --init-code $validatorInitCode
echo "create2 CreatorTokenTransferValidatorV41 END"
echo "-------------------------------------"
echo ""