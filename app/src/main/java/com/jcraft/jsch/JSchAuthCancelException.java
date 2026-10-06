package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
class JSchAuthCancelException extends JSchException {
    public final String a;

    public JSchAuthCancelException(String str) {
        super(str);
        this.a = str;
    }

    public final String getMethod() {
        return this.a;
    }

    public JSchAuthCancelException() {
    }
}
