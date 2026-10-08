package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public interface SftpProgressMonitor {
    public static final int GET = 1;
    public static final int PUT = 0;
    public static final long UNKNOWN_SIZE = -1;

    boolean count(long j);

    void end();

    void init(int i, String str, String str2, long j);
}
