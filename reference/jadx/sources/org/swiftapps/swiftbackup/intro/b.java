package org.swiftapps.swiftbackup.intro;

import defpackage.be8;
import defpackage.cu3;
import defpackage.mt3;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class b extends cu3 implements mt3 {
    @Override // defpackage.mt3
    public final Object invoke(Object obj) {
        d.b bVar = (d.b) obj;
        bVar.getClass();
        IntroActivity introActivity = (IntroActivity) this.receiver;
        int i = IntroActivity.V;
        introActivity.getClass();
        if (bVar == d.b.SIGNED_IN) {
            introActivity.Y(true);
        }
        return be8.a;
    }
}
