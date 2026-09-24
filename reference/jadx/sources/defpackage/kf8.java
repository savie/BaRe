package defpackage;

import java.io.Serializable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class kf8 implements Serializable {
    public static final kf8 b = new kf8("encryption");
    public static final kf8 c = new kf8("compression method");
    public final String a;

    public kf8(String str) {
        this.a = str;
    }

    public final String toString() {
        return this.a;
    }
}
