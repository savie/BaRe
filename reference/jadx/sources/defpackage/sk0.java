package defpackage;

import android.content.Context;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public enum sk0 {
    ROOT,
    ROOT_OR_SHIZUKU,
    NONE;

    private static final /* synthetic */ jx2 $ENTRIES = ly8.q(values());

    public static /* synthetic */ String conditionMsg$default(sk0 sk0Var, Context context, int i, Object obj) {
        if (obj != null) {
            g84.j("Super calls with default arguments not supported in this target, function: conditionMsg");
            return null;
        }
        if ((i & 1) != 0) {
            SwiftApp.Companion companion = SwiftApp.d;
            context = SwiftApp.Companion.c();
        }
        return sk0Var.conditionMsg(context);
    }

    public static jx2 getEntries() {
        return $ENTRIES;
    }

    public final String conditionMsg(Context context) {
        context.getClass();
        int i = rk0.a[ordinal()];
        if (i == 1) {
            String string = context.getString(R.string.root_access_needed);
            string.getClass();
            return string;
        }
        if (i == 2) {
            String string2 = context.getString(R.string.root_access_or_shizuku_needed);
            string2.getClass();
            return string2;
        }
        if (i == 3) {
            return "";
        }
        q.j();
        return null;
    }

    public final boolean isPossible() {
        int i = rk0.a[ordinal()];
        if (i == 1) {
            return mp6.g;
        }
        if (i == 2) {
            mp6 mp6Var = mp6.a;
            return mp6.f();
        }
        if (i == 3) {
            return true;
        }
        q.j();
        return false;
    }
}
