package defpackage;

import java.util.Locale;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class je extends cm1 {
    public final short b;

    public je(short s) {
        this(s, String.format(Locale.ROOT, "APDU error: 0x%04x", Short.valueOf(s)));
    }

    public je(short s, String str) {
        super(str);
        this.b = s;
    }
}
