package org.ietf.jgss;

public abstract class GSSManager {
    public static GSSManager getInstance() { return null; }
    public abstract GSSName createName(String nameStr, Oid nameType) throws GSSException;
    public abstract GSSContext createContext(GSSName peer, Oid mech, GSSCredential myCred, int lifetime) throws GSSException;
}
