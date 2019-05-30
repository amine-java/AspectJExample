/**
 * 
 */
package com.mbh.application;

import com.mbh.model.Account;
import com.mbh.service.AccountService;

/**
 * Main method
 * 
 * @author amineboufatah
 *
 */
public class Application {

  public static void main(String[] args) {

    // Create an account
    Account account = new Account();
    account.setCode("CODE-ACCOUNT-19821");

    // Deposit/Withdraw money
    AccountService accountService = new AccountService();
    accountService.depositMoney(account, 1000.0);
    accountService.withDrawMoney(account, 100.0);

    // Print Account object
    accountService.displayAccount(account);

    // We should get an exception thanks to AspectJ
    accountService.withDrawMoney(account, 11100.0);
  }

}
