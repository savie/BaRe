package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import defpackage.c21;
import defpackage.ex6;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.qo0;
import defpackage.qr7;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class b extends qo0 {
    public boolean e;
    public String f;
    public boolean g;
    public final ex6 h;
    public final ex6 i;

    /* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
    public enum a {
        Loading,
        DataEmpty,
        DataReceived;

        private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

        public static jx2 getEntries() {
            return $ENTRIES;
        }
    }

    public b() {
        ex6 ex6Var = new ex6();
        ex6Var.k(a.Loading);
        this.h = ex6Var;
        this.i = new ex6();
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onCallsTaskComplete(c21 c21Var) {
        c21Var.getClass();
        d();
    }
}
