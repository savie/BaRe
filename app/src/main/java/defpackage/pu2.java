package defpackage;

import android.os.Trace;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class pu2 implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        try {
            Method method = y88.b;
            Trace.beginSection("EmojiCompat.EmojiCompatInitializer.run");
            if (ku2.k != null) {
                ku2.a().c();
            }
        } finally {
            Method method2 = y88.b;
            Trace.endSection();
        }
    }
}
