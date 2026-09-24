package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class pp6 extends ContextWrapper implements Callable {
    public static final /* synthetic */ int a = 0;

    static {
        try {
            Class.forName("android.os.ServiceManager").getDeclaredMethod("getService", String.class);
            ContextWrapper.class.getDeclaredMethod("attachBaseContext", Context.class).setAccessible(true);
        } catch (Exception e) {
            y5.k(e);
        }
    }
}
