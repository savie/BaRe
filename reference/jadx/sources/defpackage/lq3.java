package defpackage;

import java.util.ArrayList;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class lq3 implements yt1 {
    public final /* synthetic */ String a;

    public lq3(String str) {
        this.a = str;
    }

    @Override // defpackage.yt1
    public final void accept(Object obj) {
        mq3 mq3Var = (mq3) obj;
        synchronized (nq3.c) {
            try {
                dg7 dg7Var = nq3.d;
                ArrayList arrayList = (ArrayList) dg7Var.get(this.a);
                if (arrayList == null) {
                    return;
                }
                dg7Var.remove(this.a);
                for (int i = 0; i < arrayList.size(); i++) {
                    ((yt1) arrayList.get(i)).accept(mq3Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
