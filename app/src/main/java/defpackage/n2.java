package defpackage;

import com.nimbusds.jose.crypto.impl.XC20P;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum n2 {
    UNIVERSAL(0),
    APPLICATION(64),
    CONTEXT_SPECIFIC(128),
    /* JADX INFO: Fake field, exist only in values array */
    PRIVATE(XC20P.IV_BIT_LENGTH);

    public final int a;

    n2(int i) {
        this.a = i;
    }
}
