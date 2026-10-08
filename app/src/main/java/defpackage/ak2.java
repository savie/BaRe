package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ak2 {
    public final boolean a;
    public final List b;

    public ak2(int i, List list) {
        boolean z = (i & 1) == 0;
        list = (i & 2) != 0 ? ov2.a : list;
        this.a = z;
        this.b = list;
    }
}
