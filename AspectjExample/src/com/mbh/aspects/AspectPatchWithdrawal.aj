/**
 * 
 */
package com.mbh.aspects;

import com.mbh.model.Account;

/**
 * This patch is used to verify if an account has sufficient funds to withdraw a certain amount of money.
 * If the withdrawal is greater than the funds in the account, then an exception is thrown. 
 * @author amineboufatah
 *
 */
public aspect AspectPatchWithdrawal {
  
  /** PointCut definition **/
  pointcut withdraw() : call(* com.mbh.service.AccountService.withDrawMoney(..));
  
 
  void around(): withdraw(){
    Account account = (Account) thisJoinPoint.getArgs()[0];
    double amount = (Double) thisJoinPoint.getArgs()[1];
    if (account != null && account.getAmount()<amount) {
      throw new RuntimeException("non-sufficient funds,you attempted to withdraw: " +amount + " and your account has : " + account.getAmount());
    }
  }

}
