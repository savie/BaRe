package defpackage;

import java.util.ArrayList;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class qo3 extends qo0 {
    public static ArrayList k;
    public boolean e;
    public boolean f;
    public final ex6 g = new ex6();
    public final ex6 h = new ex6();
    public final ix6 i = new ix6();
    public final ix6 j = new ix6();

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        k = null;
    }

    public final void j(ArrayList arrayList, ty7 ty7Var) {
        if (arrayList.isEmpty()) {
            vr6.e$default(vr6.INSTANCE, this.b, "Empty propsList!", null, 4, null);
        } else {
            this.i.i(new qp3(arrayList, ty7Var, new pp3()));
        }
    }

    @qr7(threadMode = ThreadMode.MAIN)
    public final void onFoldersTaskComplete(up3 up3Var) {
        throw null;
    }
}
