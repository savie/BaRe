package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class SftpException extends Exception {
    public int id;

    public SftpException(int i, String str) {
        super(str);
        this.id = i;
    }

    @Override // java.lang.Throwable
    public final String toString() {
        return this.id + ": " + getMessage();
    }

    public SftpException(int i, String str, Throwable th) {
        super(str, th);
        this.id = i;
    }
}
