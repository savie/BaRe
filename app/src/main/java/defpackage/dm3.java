package defpackage;

import android.util.Log;
import java.util.concurrent.atomic.AtomicLong;
import org.greenrobot.eventbus.ThreadMode;
import org.swiftapps.swiftbackup.folders.data.FolderItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class dm3 extends kk3 {
    public FolderItem e;
    public final ex6 f = new ex6();
    public final ex6 g = new ex6();
    public final ex6 h = new ex6();
    public final ex6 i = new ex6();
    public final ex6 j = new ex6();
    public final AtomicLong k = new AtomicLong();
    public final AtomicLong l = new AtomicLong();
    public zc2 m;
    public km5 n;

    public static final boolean l(long j, dm3 dm3Var, FolderItem folderItem) {
        return j == dm3Var.l.get() && dm3Var.e != null && pe4.d(dm3Var.k().getId(), folderItem.getId());
    }

    public static final void m(dm3 dm3Var, long j, String str, bm3 bm3Var) {
        if (j == dm3Var.k.get() && dm3Var.e != null && pe4.d(dm3Var.k().getSourceFolder(), str)) {
            dm3Var.g.k(bm3Var);
        }
    }

    @Override // defpackage.a55, defpackage.tl8
    public final void b() {
        super.b();
        zc2 zc2Var = re3.a;
        re3.n(this.m, this.n);
    }

    public final FolderItem k() {
        FolderItem folderItem = this.e;
        if (folderItem != null) {
            return folderItem;
        }
        pe4.F("folderItem");
        throw null;
    }

    @qr7(threadMode = ThreadMode.BACKGROUND)
    public final void onFolderEvent(mm3 mm3Var) {
        mm3Var.getClass();
        Log.d(this.b, "onFolderEvent: " + mm3Var);
        if (this.e == null || !pe4.d(k().getId(), mm3Var.a)) {
            return;
        }
        this.l.incrementAndGet();
        zn4.c(new o20(8, this, k()));
    }
}
