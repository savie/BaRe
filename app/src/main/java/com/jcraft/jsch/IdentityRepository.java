package com.jcraft.jsch;

import java.util.Vector;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface IdentityRepository {
    public static final int NOTRUNNING = 1;
    public static final int RUNNING = 2;
    public static final int UNAVAILABLE = 0;

    boolean add(byte[] bArr);

    Vector<Identity> getIdentities();

    String getName();

    int getStatus();

    boolean remove(byte[] bArr);

    void removeAll();
}
