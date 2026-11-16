// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {Script} from "forge-std/Script.sol";
import {AzzyNFT} from "../src/AzzyNFT.sol";

contract DeployAzzyNFT is Script {

    function run() external returns (AzzyNFT) {

        string memory baseURL = "ipfs://test/";

        vm.startBroadcast();

        AzzyNFT nft = new AzzyNFT(baseURL);

        vm.stopBroadcast();

        return nft;
    }
}