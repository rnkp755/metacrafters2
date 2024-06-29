# Basic ERC20 Token Implementation (Metacrafters)

The solidity program is a simple implementation of ERC20 token implementation involving `mint` and `burn` functions


## Description

  

This is a simple ERC20 token contract written in Solidity. The `IERC20` import indicates that this contract complies with the ERC20 standard by OpenZeppelin. 

Here's a quick rundown of what it does:

1. It defines variables for name, symbol and owner of the token.

2. It keeps track of balances using a `mapping` from addresses to `uint256` amounts.

3. The contract also keeps track of total supply of tokens through a private variable `_totalSupply`.

4. There are functions for getting the total supply and balance of an address, as well as transferring tokens between addresses. 

5. It has modifiers like `onlyOwner` that restrict certain function calls to only be made by the owner of the contract.

6. The contract also allows minting new tokens (creating more supply) or burning tokens (removing from total supply), emitting events for both actions. 

7. It has a mapping `_allowances` that stores how much an address can spend on behalf of another address, which is part of the ERC20 standard for approval-based transfers. However, this contract does not currently implement this functionality in any way.

8. The functions `approve` and `transferFrom` are left unimplemented as they are part of the ERC20 specification but not used here.





## Getting Started

  

### Clone the repository

  

* Clone the repository or just download the zip file.

```

git clone https://github.com/rnkp755/metacrafters.git

```

  

### Executing program

  

* Go to [```https://remix.ethereum.org/```](https://remix.ethereum.org/). Basically it's an online ide to run and deploy smart contracts

* Drag and drop the **metacrafters.sol** file into remix's workspace.

* Compile it with the help of solidity compiler button in sidebar.

* Deploy it by clicking the button below to compiler button.

* Test the functions by providing appropriate values to it.

  

## Authors

  

Contributor name and contact info.

  

Raushan Kumar Thakur

[@hackerraushan](https://linkedin.com/in/hackerraushan)