package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface HostKeyRepository {
    public static final int CHANGED = 2;
    public static final int NOT_INCLUDED = 1;
    public static final int OK = 0;

    void add(HostKey hostKey, UserInfo userInfo);

    int check(String str, byte[] bArr);

    HostKey[] getHostKey();

    HostKey[] getHostKey(String str, String str2);

    String getKnownHostsRepositoryID();

    void remove(String str, String str2);

    void remove(String str, String str2, byte[] bArr);
}
