// SPDX-License-Identifier: UNLICENSED;

// Version of compiler from 0.8.0 (included) till 0.9.0 (not included)
pragma solidity ^0.8.0;

contract tiempo {
    //Time units

    //Actual time
    uint256 public actual_time = block.timestamp;

    //No Bytes spec, so its 256
    uint256 public one_minute = 1 minutes;
    uint256 public two_hours = 2 hours;
    uint256 public fifty_days = 50 days;
    uint256 public three_weeks = 3 weeks;
}
