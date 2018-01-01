pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BitBucks is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BitBucks(address _owner)  UpgradeableToken(_owner) {
    name = "BitBucks";
    symbol = "XBB";
    totalSupply = 420420000000;
    decimals = 6;

    balances[_owner] = totalSupply;
  }
}