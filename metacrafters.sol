// SPDX-License-Identifier: MIT

pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Metacrafter is ERC20, Ownable {

    mapping(uint256 => uint256) public Prices;

    constructor() ERC20("Degen", "DEG") Ownable(msg.sender) {
        Prices[1] = 500;
        Prices[2] = 200;
    }

    function mintDGN(address _to, uint256 _amount) public onlyOwner {
        _mint(_to, _amount);
    }

    function transferDGN(address _to, uint256 _amount) public {
        require(balanceOf(msg.sender) >= _amount, "Transfer Failed: Insufficient balance.");
        approve(msg.sender, _amount);
        transferFrom(msg.sender, _to, _amount);
    }

    function showShopItems() external pure returns (string memory) {
        string memory saleOptions = "The items on sale: {1} Degen NFT (500) {2} Degen Painting (200)";
        return saleOptions;
    }

    function redeemDGN(uint256 _item) public {
        require(Prices[_item] > 0, "Item is not available.");
        require(_item <= 2, "Item is not available.");
        require(balanceOf(msg.sender) >= Prices[_item], "Redeem Failed: Insufficient balance.");
        transfer(owner(), Prices[_item]);
    }
    
    function burnDGN(uint256 _amount) public {
        require(balanceOf(msg.sender) >= _amount, "Burn Failed: Insufficient balance.");
        approve(msg.sender, _amount);
        _burn(msg.sender, _amount);
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }
}