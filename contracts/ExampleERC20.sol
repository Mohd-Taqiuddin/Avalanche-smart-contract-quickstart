//SPDX-License-Identifier: MIT
pragma solidity >=0.6.2;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract ExampleERC20 is ERC20, Ownable {
  string private TOKEN_NAME = "Test Token";
  string private TOKEN_SYMBOL = "TT";

  uint256 private constant TOTAL_SUPPLY = 99999999999999999999999999999;

  constructor()ERC20(TOKEN_NAME, TOKEN_SYMBOL) {
    _mint(msg.sender, TOTAL_SUPPLY);
  }

  function mint(address to, uint256 amount) public onlyOwner {
    _mint(to, amount);
  }

  function burn(address from, uint256 amount) public onlyOwner {
    _burn(from, amount);
  }
}
