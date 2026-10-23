package defpackage;

import android.os.Looper;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class ex6 extends gj5 {
    @Override // defpackage.zy4
    public final void k(Object obj) {
        Object objD = d();
        if (objD == null || objD != obj) {
            l(obj);
        }
    }

    public final void l(Object obj) {
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            super.k(obj);
        } else {
            i(obj);
        }
        try {
            if (this == SwiftApp.b().a) {
                re3.l().b(new dx6());
            }
        } catch (Exception unused) {
        }
    }
}
