/**
 * 
 */
package com.mbh.service;

import com.mbh.model.Account;

/**
 * AccountService
 * 
 * @author amineboufatah
 *
 */
public class AccountService {

  public void withDrawMoney(Account account, double amount) {
    double newAmount = account.getAmount() - amount;
    account.setAmount(newAmount);
  }

  public void depositMoney(Account account, double amount) {
    double newAmount = account.getAmount() + amount;
    account.setAmount(newAmount);
  }

  public void displayAccount(Account account) {
    System.out.println(account);
  }

}
