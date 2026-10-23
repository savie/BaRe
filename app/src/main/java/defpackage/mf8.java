package defpackage;

import java.security.cert.X509Certificate;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class mf8 extends Exception {
    public final X509Certificate a;

    public mf8(Exception exc, X509Certificate x509Certificate) {
        super(exc);
        this.a = x509Certificate;
    }
}
