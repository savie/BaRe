package defpackage;

import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class hb5 {
    public final String a;
    public final int b;

    public hb5(byte[] bArr) {
        Objects.requireNonNull(bArr);
        this.a = null;
        this.b = 1;
    }

    public hb5(String str) {
        this.a = str;
        this.b = 0;
    }

    public hb5(int i, String str, Long l) {
        str.getClass();
        this.b = i;
        this.a = str;
    }
}
