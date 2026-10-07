package org.ietf.jgss;

public interface GSSContext {
    void dispose() throws GSSException;
    byte[] getMIC(byte[] inMsg, int offset, int len, MessageProp msgProp) throws GSSException;
    void requestMutualAuth(boolean state) throws GSSException;
    void requestConf(boolean state) throws GSSException;
    void requestInteg(boolean state) throws GSSException;
    void requestCredDeleg(boolean state) throws GSSException;
    void requestAnonymity(boolean state) throws GSSException;
    byte[] initSecContext(byte[] inToken, int offset, int len) throws GSSException;
    boolean isEstablished();
}
