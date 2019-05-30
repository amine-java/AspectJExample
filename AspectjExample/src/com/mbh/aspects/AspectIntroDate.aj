/**
 * 
 */
package com.mbh.aspects;

import java.util.Date;
import com.mbh.model.Account;

/**
 * This aspect adds a date to the account object. 
 * It also modifies the toString() method in order to take the date into account.
 *  
 * @author amineboufatah
 *
 */
public aspect AspectIntroDate {
  
  /** Here we're adding a date to our Account object **/
  public Date com.mbh.model.Account.date ; 
  
  /** PointCut definition **/
  pointcut printAccount() : execution(* com.mbh.model.Account.toString());
  
  before():initialization(com.mbh.model.Account.new(..)){
    Account account = (Account) thisJoinPoint.getTarget();
    account.date = new Date();
  }
  
  String around():printAccount(){
    Account account = (Account) thisJoinPoint.getTarget();
    String line = proceed();
    
    return line + " Date= " + account.date;
  }
  
  

}
