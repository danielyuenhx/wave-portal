// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.4;

import "hardhat/console.sol";

contract WavePortal {
    uint256 waveCount;
    mapping(address => uint) public waveAddresses;

    constructor() {
        console.log("wassup");
    }

    function wave() public {
        waveCount += 1;
        waveAddresses[msg.sender] += 1;
        console.log("%s has waved!", msg.sender);
        console.log("%d total number of waves from %s!", waveAddresses[msg.sender], msg.sender);
    }

    function getWaveCount() public view returns (uint256) {
        console.log("We have %d total waves!", waveCount);
        return waveCount;
    }
}