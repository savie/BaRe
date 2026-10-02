package com.bare.appslist.policy;
public final class BackupLimitCheck {
 public enum Result { ALLOWED, WARNING, BLOCKED }
 private final Result result; private final long partBytes,limitBytes;
 public BackupLimitCheck(Result result,long partBytes,long limitBytes){this.result=result;this.partBytes=partBytes;this.limitBytes=limitBytes;}
 public Result getResult(){return result;} public long getPartBytes(){return partBytes;} public long getLimitBytes(){return limitBytes;}
}