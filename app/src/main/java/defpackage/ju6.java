package defpackage;

import java.util.Collections;
import java.util.EnumSet;
import java.util.Set;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public enum ju6 implements sx2 {
    FILE_SHARE_READ(0),
    FILE_SHARE_WRITE(1),
    FILE_SHARE_DELETE(2);

    public static final Set e = Collections.unmodifiableSet(EnumSet.allOf(ju6.class));
    public final long a;

    ju6(int i) {
        this.a = j;
    }

    @Override // defpackage.sx2
    public final long getValue() {
        return this.a;
    }
}
