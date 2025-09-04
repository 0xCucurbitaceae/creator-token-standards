// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "./TransferValidatorERC1155.t.sol";
import {CreatorTokenTransferValidatorV41, LIST_TYPE_TARGET_WHITELIST} from "../src/utils/CreatorTokenTransferValidatorV41.sol";

contract CreatorTokenTransferValidatorV41Test is TransferValidatorTestERC1155 {
    // CreatorTokenTransferValidatorV41 public creatorTokenTransferValidatorV41;

    // function setUp() public virtual override {
    //     super.setUp();

    //     // Deploy CreatorTokenTransferValidatorV41 instead of the regular CreatorTokenTransferValidator
    //     creatorTokenTransferValidatorV41 = new CreatorTokenTransferValidatorV41(
    //         address(this),
    //         address(eoaRegistry),
    //         "CreatorTokenTransferValidatorV41",
    //         "1.0.0",
    //         address(validatorConfiguration)
    //     );

    //     validator = creatorTokenTransferValidatorV41;
    // }

    // /*************************************************************************/
    // /*                   TARGET WHITELIST MANAGEMENT TESTS                   */
    // /*************************************************************************/
    // function testAddAccountsToRecipientAllowlist(address listOwner, uint256 numAccountsToWhitelist, address[10] memory accounts) public {
    //     _sanitizeAddress(listOwner);
    //     numAccountsToWhitelist = bound(numAccountsToWhitelist, 1, 10);

    //     vm.prank(listOwner);
    //     uint120 listId = validator.createList("test");

    //     CreatorTokenTransferValidatorV41 creatorTokenTransferValidatorV41 = CreatorTokenTransferValidatorV41(address(validator));

    //     uint256 expectedNumAccountsWhitelisted = 0;
    //     address[] memory accountsToWhitelist = new address[](numAccountsToWhitelist);
    //     for (uint256 i = 0; i < numAccountsToWhitelist; i++) {
    //         bool firstTimeAccount = true;
    //         for (uint256 j = 0; j < i; j++) {
    //             if (accountsToWhitelist[j] == accounts[i]) {
    //                 firstTimeAccount = false;
    //                 break;
    //             }
    //         }

    //         accountsToWhitelist[i] = accounts[i];

    //         if (firstTimeAccount) {
    //             expectedNumAccountsWhitelisted++;
    //             vm.expectEmit(true, true, true, true);
    //             emit AddedAccountToList(LIST_TYPE_TARGET_WHITELIST, listId, accounts[i]);
    //         }
    //     }

    //     vm.prank(listOwner);
    //     creatorTokenTransferValidatorV41.addAccountsToRecipientAllowlist(listId, accountsToWhitelist);

    //     for (uint256 i = 0; i < numAccountsToWhitelist; i++) {
    //     //   assertTrue(CreatorTokenTransferValidatorV41.isAccountRecipientAllowlisted(listId, accountsToWhitelist[i]));
    //     }

    //     // address[] memory whitelistedAccounts = CreatorTokenTransferValidatorV41.getRecipientAllowlistedAccounts(listId);
    //     // assertEq(whitelistedAccounts.length, expectedNumAccountsWhitelisted);

    //     for(uint256 i = 0; i < expectedNumAccountsWhitelisted; i++) {
    //     //   assertTrue(CreatorTokenTransferValidatorV41.isAccountRecipientAllowlisted(listId, accountsToWhitelist[i]));
    //     }
    // }

    // function testRemoveAccountsFromRecipientAllowlist(address listOwner, uint256 numAccountsToRemove, address[10] memory accounts) public {
    //     _sanitizeAddress(listOwner);
    //     numAccountsToRemove = bound(numAccountsToRemove, 1, 10);

    //     vm.startPrank(listOwner);
    //     uint120 listId = validator.createList("test");

    //     address[] memory accountsToWhitelist = new address[](10);
    //     for (uint256 i = 0; i < 10; i++) {
    //         accountsToWhitelist[i] = accounts[i];
    //     }

    //     validator.addAccountsToWhitelist(listId, accountsToWhitelist);
    //     vm.stopPrank();

    //     uint256 numPreWhitelistedAccounts = validator.getWhitelistedAccounts(listId).length;

    //     uint256 expectedNumAccountsRemoved = 0;
    //     address[] memory accountsToRemove = new address[](numAccountsToRemove);
    //     for (uint256 i = 0; i < numAccountsToRemove; i++) {
    //         bool firstTimeAccount = true;
    //         for (uint256 j = 0; j < i; j++) {
    //             if (accountsToRemove[j] == accounts[i]) {
    //                 firstTimeAccount = false;
    //                 break;
    //             }
    //         }

    //         accountsToRemove[i] = accounts[i];

    //         if (firstTimeAccount) {
    //             expectedNumAccountsRemoved++;
    //             vm.expectEmit(true, true, true, true);
    //             emit RemovedAccountFromList(LIST_TYPE_WHITELIST, listId, accounts[i]);
    //         }
    //     }

    //     vm.prank(listOwner);
    //     validator.removeAccountsFromWhitelist(listId, accountsToRemove);

    //     for (uint256 i = 0; i < numAccountsToRemove; i++) {
    //         assertFalse(validator.isAccountWhitelisted(listId, accountsToRemove[i]));
    //     }

    //     address[] memory whitelistedAccounts = validator.getWhitelistedAccounts(listId);
    //     assertEq(whitelistedAccounts.length, numPreWhitelistedAccounts - expectedNumAccountsRemoved);
    // }
}
