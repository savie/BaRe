package defpackage;

import android.os.Looper;
import android.util.Log;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.anonymous.MFirebaseUser;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistApp;
import org.swiftapps.swiftbackup.blacklist.data.BlacklistData;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class gs0 {
    public static boolean b;
    public static BlacklistData c;
    public static final gs0 a = new gs0();
    public static final gv7 d = new gv7(new zk(4));

    public static boolean c(String str, is0 is0Var) {
        List<BlacklistApp> items;
        Object next;
        str.getClass();
        is0Var.getClass();
        BlacklistData blacklistData = c;
        if (blacklistData == null || (items = blacklistData.getItems()) == null) {
            return false;
        }
        Iterator<T> it = items.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!pe4.d(((BlacklistApp) next).getPackageName(), str));
        BlacklistApp blacklistApp = (BlacklistApp) next;
        return blacklistApp != null && blacklistApp.getBlackListType() == is0Var.ordinal();
    }

    public final synchronized BlacklistData a() {
        BlacklistData blacklistData;
        if (pe4.d(Looper.myLooper(), Looper.getMainLooper())) {
            throw new IllegalThreadStateException("Method called from main thread");
        }
        try {
            gv7 gv7Var = w14.a;
            e(es0.a((BlacklistData) io4.j("GsonHelper", "fromPrefs", false, new fs0(), 12)));
            blacklistData = c;
        } catch (Exception e) {
            vr6.de$default(vr6.INSTANCE, "BlacklistRepo", io4.b(e), null, 4, null);
            blacklistData = null;
        }
        return blacklistData;
    }

    public final boolean b() {
        Boolean boolValueOf;
        Boolean boolValueOf2;
        Log.d("BlacklistRepo", "Fetching on demand");
        ai8.b();
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA = d45.a();
            boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
        } catch (Exception unused) {
        }
        if (pe4.d(boolValueOf, Boolean.TRUE) || !ai8.h()) {
            a();
            return true;
        }
        zc2 zc2VarD = re3.k().d("blacklistApps");
        try {
            d45.b.getClass();
            MFirebaseUser mFirebaseUserA2 = d45.a();
            boolValueOf2 = mFirebaseUserA2 != null ? Boolean.valueOf(mFirebaseUserA2.isAnonymous()) : null;
        } catch (Exception unused2) {
        }
        zc2 zc2Var = pe4.d(boolValueOf2, Boolean.TRUE) ? null : zc2VarD;
        if (zc2Var == null) {
            vr6.e$default(vr6.INSTANCE, "BlacklistRepo", "Firebase blacklist ref unexpectedly null after auth/network checks.", null, 4, null);
            return false;
        }
        l73 l73VarA = cf3.a(zc2Var, true);
        if (l73VarA instanceof xe3) {
            d((BlacklistData) ((xe3) l73VarA).n.c(BlacklistData.class), false);
            return true;
        }
        if (!(l73VarA instanceof we3)) {
            q.j();
            return false;
        }
        vr6 vr6Var = vr6.INSTANCE;
        String str = ((we3) l73VarA).n.b;
        str.getClass();
        vr6.e$default(vr6Var, "BlacklistRepo", str, null, 4, null);
        return false;
    }

    public final void d(BlacklistData blacklistData, boolean z) {
        Boolean boolValueOf;
        BlacklistData blacklistDataA = es0.a(blacklistData);
        gv7 gv7Var = w14.a;
        w14.h(blacklistDataA, "blacklist_data");
        if (z) {
            zc2 zc2VarD = re3.k().d("blacklistApps");
            try {
                d45.b.getClass();
                MFirebaseUser mFirebaseUserA = d45.a();
                boolValueOf = mFirebaseUserA != null ? Boolean.valueOf(mFirebaseUserA.isAnonymous()) : null;
            } catch (Exception unused) {
            }
            if (pe4.d(boolValueOf, Boolean.TRUE)) {
                zc2VarD = null;
            }
            if (zc2VarD != null) {
                zc2VarD.i(blacklistDataA);
            }
        }
        e(blacklistDataA);
    }

    public final synchronized void e(BlacklistData blacklistData) {
        BlacklistData blacklistDataCopy$default = null;
        if (blacklistData != null) {
            try {
                blacklistDataCopy$default = BlacklistData.copy$default(blacklistData, null, 1, null);
            } catch (Throwable th) {
                throw th;
            }
        }
        c = blacklistDataCopy$default;
        ((ex6) d.getValue()).k(c);
    }
}
