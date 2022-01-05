// SPDX-License-Identifier: UNLICENSED;
pragma solidity >=0.8.0 <0.9.0;

contract operators {
    // Arithmetic operations
    uint256 a = 32;
    uint256 b = 4;

    uint256 c = 4;

    uint256 public sum = a + b;
    uint256 public minus = a - b;
    uint256 public division = a / b;
    uint256 public product = a * b;
    uint256 public residuo = a % b;
    uint256 public exponential = a**b;

    // Compare integers
    bool public test_1 = a > b;
    bool public test_2 = a < b;
    bool public test_3 = a == b;
    bool public test_4 = a == a;
    bool public test_5 = a != b;
    bool public test_6 = a != a;

    bool public test_7 = b == c;
    bool public test_8 = b >= c;
    bool public test_9 = b != c;

    // Boolean operators
    function divisible_1(uint256 _k) public pure returns (bool) {
        uint256 last_digit = _k % 10;

        if ((last_digit == 0) || (last_digit == 5)) {
            return true;
        } else {
            return false;
        }
    }

    function divisible_2(uint256 _k) public pure returns (bool) {
        if (_k % 5 == 0) {
            return true;
        } else {
            return false;
        }
    }
}
