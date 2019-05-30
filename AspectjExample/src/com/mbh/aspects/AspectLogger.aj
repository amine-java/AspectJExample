/**
 * 
 */
package com.mbh.aspects;

import java.util.logging.Logger;

/**
 * This Aspect logs every method located in the "com.mbh.*" package. 
 * @author amineboufatah
 *
 */
public aspect AspectLogger {
 
  /** Logger**/
  private static  Logger logger = Logger.getLogger(AspectLogger.class.getName()); 
  
  /** PointCut definition **/
  pointcut log(): call(* com.mbh..*.*.*(..));
 
  /** Start time **/
  private long start ;
  
  /** End time **/
  private long end ;
  
  /**
   * Before calling the method defined in the PointCut 
   */
  before():log(){
    StringBuilder arguments = new StringBuilder();
    arguments.append("(");
    if (thisJoinPoint.getArgs().length > 0) {
      for (int i = 0 ; i<thisJoinPoint.getArgs().length  ; i++) {
        arguments.append(thisJoinPoint.getArgs()[i]).append(",");
      }
      arguments.append(")");
    }
    logger.info("Called method: " + thisJoinPoint.getSignature() + "with arguments: " + arguments);
    start = System.currentTimeMillis();
  }
  
  
  /**
   * After calling the method defined in the PointCut 
   */
  after():log(){
    end = System.currentTimeMillis();
    logger.info("End method: " + thisJoinPoint.getSignature() + " in " + (end-start) + "ms");
  }

}
