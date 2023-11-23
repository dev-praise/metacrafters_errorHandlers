// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract test_errorHandlers{

    uint256 num = 5;
    address caller = msg.sender;

    function stateUpdate(uint256 _value)public {

        if (num < 1) {
            revert("update unnecessary");
        }

        assert( caller == msg.sender);

        require(_value >0, "value must be greater than 0");

        num += _value;  
    }
}
