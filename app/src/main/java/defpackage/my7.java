package defpackage;

import java.util.List;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class my7 extends ny7 {
    public final List a;
    public final List b;

    public my7(List list, List list2) {
        this.a = list;
        this.b = list2;
        if (list.isEmpty() && list2.isEmpty()) {
            l0.e("Both localBackups and cloudBackups parameters are empty lists!");
            throw null;
        }
    }
}
