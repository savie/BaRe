package com.jcraft.jsch;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class JSchSessionDisconnectException extends JSchException {
    public final int a;
    public final String b;
    public final String c;

    public JSchSessionDisconnectException(String str, int i, String str2, String str3) {
        super(str);
        this.a = i;
        this.b = str2;
        this.c = str3;
    }

    public final String getDescription() {
        return this.b;
    }

    public final String getLanguageTag() {
        return this.c;
    }

    public final int getReasonCode() {
        return this.a;
    }
}
