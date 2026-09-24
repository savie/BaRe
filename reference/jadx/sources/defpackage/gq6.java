package defpackage;

import android.os.IBinder;
import android.os.Messenger;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gq6 extends dr0 {
    public final Messenger b;
    public final int c;
    public final /* synthetic */ iq6 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gq6(int i, iq6 iq6Var, IBinder iBinder) {
        super(iBinder);
        this.d = iq6Var;
        this.b = new Messenger(iBinder);
        this.c = i;
    }

    @Override // defpackage.dr0
    public final void a() {
        iq6 iq6Var = this.d;
        SparseArray sparseArray = iq6Var.c;
        int i = this.c;
        sparseArray.remove(i);
        Iterator it = iq6Var.b.entrySet().iterator();
        while (it.hasNext()) {
            hq6 hq6Var = (hq6) ((Map.Entry) it.next()).getValue();
            if (i < 0) {
                hq6Var.b.clear();
            }
            iq6Var.g(hq6Var, i, new a9(it, 7));
        }
    }
}
