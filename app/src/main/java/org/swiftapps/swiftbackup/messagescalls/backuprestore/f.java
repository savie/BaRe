package org.swiftapps.swiftbackup.messagescalls.backuprestore;

import defpackage.b7;
import defpackage.ex6;
import defpackage.gv7;
import defpackage.jf5;
import defpackage.jx2;
import defpackage.ly8;
import defpackage.qo0;
import defpackage.qr7;
import defpackage.ud5;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class f extends qo0 {
    public boolean e;
    public String f;
    public boolean g;
    public final gv7 h = new gv7(new b7(22));
    public final ex6 i;
    public final ex6 j;
    public final ex6 k;
    public final ex6 l;

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

    public f() {
        ex6 ex6Var = new ex6();
        ex6Var.k(a.Loading);
        this.i = ex6Var;
        this.j = new ex6();
        this.k = new ex6();
        this.l = new ex6();
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onMessagesTaskComplete(jf5 jf5Var) {
        jf5Var.getClass();
        if (jf5Var.a) {
            d();
        } else if (ud5.j()) {
            this.l.k(Boolean.TRUE);
        } else {
            d();
        }
    }
}
