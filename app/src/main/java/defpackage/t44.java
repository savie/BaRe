package defpackage;

import androidx.fragment.app.b0;
import androidx.fragment.app.o;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class t44 extends b0 {
    @Override // defpackage.ow5
    public final int c() {
        return 4;
    }

    @Override // androidx.fragment.app.b0
    public final o g(int i) {
        if (i == 0) {
            return new x92();
        }
        if (i == 1) {
            return new gg1();
        }
        if (i == 2) {
            return new m37();
        }
        if (i == 3) {
            return new o7();
        }
        l0.e(fz5.j(i, "MFragmentPagerAdapter.getItem(): No fragment for index = "));
        return null;
    }
}
