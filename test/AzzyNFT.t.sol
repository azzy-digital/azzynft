// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import {AzzyNFT} from "../src/AzzyNFT.sol";

contract AzzyNFTTest is Test {

    AzzyNFT nft;
    address user = address(1);

    function setUp() public {
        nft = new AzzyNFT("ipfs://test/");
    }

    function testMintNFT() public {
        nft.mint(user);

        assertEq(nft.ownerOf(1), user);
    }

    function testOnlyOwnerCanMint() public {
        vm.prank(user);
        vm.expectRevert();

        nft.mint(user);
    }
}