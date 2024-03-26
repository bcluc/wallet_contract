// SPDX-License-Identifier: MIT
pragma solidity 0.7.4;

contract PKCoin{
    int private balance;

    constructor(){
        balance =0;
    }

    function getBalance() public view returns (int){
        return balance;
    }

    function setBalance(int _balance) public {
        balance = _balance;
    }
    
    function depositBalance(int money) public {
        balance += money;
    }

    function withdrawBalance(int money) public {
        
        balance -= money;
    }
}