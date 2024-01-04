// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract MyToken {

    // public variables here
    string public TokenName = "META";
    string public TokenSymbol =  "MTA";
    uint public totalSupply = 1000e18;
    // mapping variable here
    mapping (address => uint) public balances;

    // mint function
    function mint(address _receiver, uint _value) public {
        totalSupply+= _value;
        balances[_receiver] += _value;
    }

    // burn function
    function burn(address _receiver, uint _value) public {
        totalSupply -= _value;
        require(balances[_receiver] >= _value);
        balances[_receiver] -= _value;
    }

}