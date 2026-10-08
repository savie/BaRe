package org.swiftapps.swiftbackup.intro;

import defpackage.be8;
import defpackage.cu3;
import defpackage.mt3;
import defpackage.q;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class c extends cu3 implements mt3 {
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        d.a aVar = (d.a) obj;
        aVar.getClass();
        IntroActivity introActivity = (IntroActivity) this.receiver;
        int i = IntroActivity.V;
        introActivity.getClass();
        int i2 = a.a[aVar.ordinal()];
        if (i2 != 1 && i2 != 2) {
            if (i2 == 3) {
                introActivity.a0().k.k(d.a.IDLE);
                introActivity.V();
            } else {
                if (i2 != 4) {
                    q.j();
                    return null;
                }
                introActivity.a0().k.k(d.a.IDLE);
                introActivity.X();
            }
        }
        return be8.a;
    }
}
