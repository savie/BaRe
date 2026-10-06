package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class zw5 extends ArrayList {
    public static final /* synthetic */ int b = 0;
    public final /* synthetic */ int a = 1;

    public /* synthetic */ zw5() {
    }

    public vf7 c(int i) {
        for (int size = size(); size <= i; size++) {
            add(new vf7());
        }
        return (vf7) super.get(i);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public /* bridge */ /* synthetic */ Object get(int i) {
        switch (this.a) {
            case 1:
                return c(i);
            default:
                return super.get(i);
        }
    }

    public /* synthetic */ zw5(int i) {
        super(i);
    }
}
