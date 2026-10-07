package org.ietf.jgss;

public class GSSException extends Exception {
    public GSSException(int majorCode) { super(); }
    public GSSException(int majorCode, int minorCode, String minorString) { super(minorString); }
    public GSSException(int majorCode, String message) { super(message); }
}
