/**
 * 
 */
package com.mbh.model;

/**
 * Account
 * 
 * @author amineboufatah
 *
 */
public class Account {

  private String code;

  private double amount;

  public String getCode() {
    return code;
  }

  public void setCode(String code) {
    this.code = code;
  }

  public double getAmount() {
    return amount;
  }

  public void setAmount(double amount) {
    this.amount = amount;
  }

  @Override
  public String toString() {
    return "Account: code=" + code + ", amount=" + amount;
  }

}
