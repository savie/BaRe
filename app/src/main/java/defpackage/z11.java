package defpackage;

import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.telephony.SubscriptionManager;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.SwiftApp;
import org.swiftapps.swiftbackup.model.provider.CallLogItem;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class z11 extends pw6 {
    public final String m;
    public final List n;
    public final String o;
    public Long p;

    public z11(String str, ArrayList arrayList) {
        super(new xy7(nc8.I(q05.CLOUD), true), new w11());
        this.m = "CallsTask";
        this.n = arrayList;
        this.o = str;
    }

    public static final int p(z11 z11Var, int i) {
        z11Var.getClass();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 34) {
            return SubscriptionManager.getSubscriptionId(i);
        }
        if (i2 < 29) {
            return -1;
        }
        SwiftApp.Companion companion = SwiftApp.d;
        int[] subscriptionIds = ((SubscriptionManager) SwiftApp.Companion.c().getSystemService(SubscriptionManager.class)).getSubscriptionIds(i);
        if (subscriptionIds == null) {
            return -1;
        }
        Integer numValueOf = subscriptionIds.length == 0 ? null : Integer.valueOf(subscriptionIds[0]);
        if (numValueOf != null) {
            return numValueOf.intValue();
        }
        return -1;
    }

    @Override // defpackage.pw6
    public final void b() {
        zn7 zn7Var;
        String str;
        xp1 xp1Var;
        cz7 cz7Var = this.a;
        boolean z = cz7Var instanceof xy7;
        List<CallLogItem> list = this.n;
        ex6 ex6Var = this.i;
        if (z) {
            SwiftApp.Companion companion = SwiftApp.d;
            ex6Var.i(SwiftApp.Companion.c().getString(R.string.backing_up));
            xy7 xy7Var = (xy7) ((zy7) cz7Var);
            if (xy7Var.f) {
                String str2 = this.o;
                str2.getClass();
                s(new q63(str2, 1));
            } else {
                List list2 = xy7Var.e;
                q63 q63VarH = d01.h();
                if (!q63VarH.j()) {
                    q63.E(q63VarH);
                }
                q63 q63VarJ = d01.h().J("call_logs");
                q63VarJ.h();
                gv7 gv7Var = w14.a;
                boolean zF = w14.f(sz0.Companion.wrapList(list), q63VarJ);
                dz7 dz7Var = this.b;
                if (zF) {
                    if (ji8.t(list2)) {
                        String str3 = ry5.u;
                        str = qy5.f(false, null).m;
                    } else {
                        String str4 = ry5.u;
                        str = qy5.f(false, null).l;
                    }
                    int size = list.size();
                    Locale locale = Locale.ENGLISH;
                    Long lValueOf = Long.valueOf(System.currentTimeMillis());
                    Integer numValueOf = Integer.valueOf(size);
                    tb1 tb1Var = tb1.a;
                    zn7Var = null;
                    String str5 = String.format(locale, "%s.%d.%d.%s.%s", Arrays.copyOf(new Object[]{"v3", lValueOf, numValueOf, qb1.e(), "cls"}, 5));
                    int i = 2;
                    q63 q63Var = new q63(str, str5, 2);
                    io4.g(q63Var);
                    char[] cArrG = yx5.g(yx5.j());
                    try {
                        try {
                            HashSet hashSet = mz6.a;
                            int i2 = -1;
                            try {
                                SharedPreferences sharedPreferences = cz4.f;
                                if (sharedPreferences == null) {
                                    pe4.F("prefs");
                                    throw null;
                                }
                                i2 = sharedPreferences.getInt("compression_level_calls", -1);
                                xp1.Companion.getClass();
                                xp1[] xp1VarArrA = wp1.a();
                                int i3 = 0;
                                while (true) {
                                    if (i3 >= i) {
                                        xp1Var = null;
                                        break;
                                    }
                                    xp1Var = xp1VarArrA[i3];
                                    if (xp1Var.getLevel() == i2) {
                                        break;
                                    }
                                    i3++;
                                    i = 2;
                                }
                                if (xp1Var == null) {
                                    xp1.Companion.getClass();
                                    xp1Var = xp1.DEFAULT;
                                }
                                mz6.e(q63VarH, q63Var, cArrG, xp1Var, "swiftbackup.calls.v3");
                                Arrays.fill(cArrG, 0, cArrG.length, (char) 0);
                                d01.c(false);
                                if (!i() && list2.contains(q05.CLOUD)) {
                                    s(q63Var);
                                }
                            } catch (ClassCastException unused) {
                            }
                        } catch (Exception e) {
                            vr6.e$default(vr6.INSTANCE, this.m, "Failed to create SBA calls backup", e, null, 8, null);
                            Arrays.fill(cArrG, 0, cArrG.length, (char) 0);
                            ((w11) dz7Var).a(q63Var.v());
                        }
                    } catch (Throwable th) {
                        Arrays.fill(cArrG, 0, cArrG.length, (char) 0);
                        throw th;
                    }
                } else {
                    vr6.e$default(vr6.INSTANCE, this.m, "Failed to save call logs!", null, 4, null);
                    ((w11) dz7Var).a(q63VarJ.v());
                }
            }
            zn7Var = null;
        } else {
            zn7Var = null;
        }
        if (cz7Var instanceof yy7) {
            SwiftApp.Companion companion2 = SwiftApp.d;
            ex6Var.i(SwiftApp.Companion.c().getString(R.string.restoring));
            xf5 xf5Var = new xf5();
            int size2 = list.size();
            int i4 = 0;
            while (i4 < size2) {
                r(xf5Var, list.get(i4), 0);
                i4++;
                n(i4);
                if (i()) {
                    break;
                }
            }
        }
        Log.i(this.m, "Cleaning cloud cache on device");
        boolean z2 = q63.d;
        String str6 = ry5.u;
        cy0.g(qy5.f(false, zn7Var).m);
        if (z) {
            xy7 xy7Var2 = (xy7) ((zy7) cz7Var);
            pz0 pz0Var = (xy7Var2.e.contains(q05.CLOUD) || xy7Var2.f) ? pz0.LOCAL_AND_CLOUD : pz0.LOCAL;
            pz0Var.getClass();
            qz0 qz0Var = new qz0();
            qz0Var.a = pz0Var;
            ny2.b().e(qz0Var);
        }
        ny2.b().e(new c21());
    }

    @Override // defpackage.pw6
    public final String c() {
        return this.m;
    }

    @Override // defpackage.pw6
    public final int d() {
        return this.n.size();
    }

    @Override // defpackage.pw6
    public final int f() {
        return this.n.size();
    }

    @Override // defpackage.pw6
    public final String h() {
        SwiftApp.Companion companion = SwiftApp.d;
        return dj7.g(R.string.call_logs);
    }

    @Override // defpackage.pw6
    public final String j() {
        SwiftApp.Companion companion = SwiftApp.d;
        String string = SwiftApp.Companion.c().getString(R.string.x_calls, String.valueOf(this.n.size()));
        string.getClass();
        return string;
    }

    public final Uri q(ContentValues contentValues) throws Exception {
        List<Uri> restore_content_uris = CallLogItem.Companion.getRESTORE_CONTENT_URIS();
        int i = 0;
        for (Object obj : restore_content_uris) {
            int i2 = i + 1;
            if (i < 0) {
                fl1.F0();
                throw null;
            }
            Uri uri = (Uri) obj;
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                Uri uriInsert = SwiftApp.Companion.c().getContentResolver().insert(uri, contentValues);
                if (uriInsert != null) {
                    return uriInsert;
                }
                i = i2;
            } catch (Exception e) {
                if (i == restore_content_uris.size() - 1) {
                    throw e;
                }
                vr6.w$default(vr6.INSTANCE, this.m, "insertCallLog: " + uri + " failed, retrying fallback: " + io4.b(e), null, 4, null);
            }
        }
        return null;
    }

    public final void r(xf5 xf5Var, CallLogItem callLogItem, int i) {
        long id;
        long j;
        if (i >= 10) {
            return;
        }
        String str = this.m;
        if (callLogItem != null) {
            boolean z = false;
            try {
                SwiftApp.Companion companion = SwiftApp.d;
                Cursor cursorQuery = SwiftApp.Companion.c().getContentResolver().query(CallLogItem.Companion.getCONTENT_URI(), new String[]{"_id"}, "date = ? AND number = ? AND type = ?", new String[]{String.valueOf(callLogItem.getDate()), callLogItem.getNumber(), String.valueOf(callLogItem.getType())}, null);
                if (cursorQuery != null) {
                    try {
                        boolean z2 = cursorQuery.getCount() > 0;
                        cursorQuery.close();
                        z = z2;
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            rs9.c(cursorQuery, th);
                            throw th2;
                        }
                    }
                }
            } catch (Exception e) {
                vr6.w$default(vr6.INSTANCE, this.m, "isItemOnDevice: ".concat(io4.b(e)), null, 4, null);
            }
            if (!z) {
                try {
                    Uri uriQ = q(xf5Var.c(CallLogItem.copy$default(callLogItem.withPhoneAccountForRestore(Build.VERSION.SDK_INT, new x11(1, this, z11.class, "getSubscriptionIdForSlot", "getSubscriptionIdForSlot(I)I", 0, 0)), 0L, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, null, 16777215, null)));
                    if (uriQ != null) {
                        Log.i(str, "restoreItem: created = " + uriQ);
                        return;
                    }
                    Long l = this.p;
                    if (l != null) {
                        id = l.longValue();
                        j = 1;
                    } else {
                        id = callLogItem.getId();
                        j = 1000;
                    }
                    long j2 = id + j;
                    this.p = Long.valueOf(j2);
                    vr6.i$default(vr6.INSTANCE, this.m, "restoreItem: Retrying with a different id=" + j2, null, 4, null);
                    try {
                        r(xf5Var, CallLogItem.copy$default(callLogItem, j2, 0, 0, null, 0, null, 0L, 0L, 0L, 0, null, 0, null, 0, null, null, null, null, 0L, null, null, null, null, null, 16777214, null), i + 1);
                        return;
                    } catch (Exception e2) {
                        e = e2;
                        u48.s("restoreItem: ", e.getMessage(), str);
                        return;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
            }
        }
        Log.i(str, "Item already on device");
    }

    public final void s(q63 q63Var) {
        SwiftApp.Companion companion = SwiftApp.d;
        this.i.i(SwiftApp.Companion.c().getString(R.string.uploading));
        rf8 rf8Var = new rf8(q63Var, 21, true, null, false);
        tb1 tb1Var = tb1.a;
        ag8 ag8VarD = qb1.c().d(rf8Var);
        this.k = ag8VarD;
        bz bzVar = new bz(1, this, rf8Var);
        ag8VarD.getClass();
        ag8VarD.g = bzVar;
        zf8 zf8VarC = ag8VarD.c();
        ((w11) this.b).b = zf8VarC;
        if (zf8VarC.a()) {
            d01.c(true);
            zc2 zc2VarD = re3.d();
            zc2VarD.b(new y11(zc2VarD));
        }
    }

    public z11(List list, zy7 zy7Var) {
        super(zy7Var, new w11());
        this.m = "CallsTask";
        this.n = list;
    }

    @Override // defpackage.pw6
    public final void a() {
    }
}
