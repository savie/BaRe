package defpackage;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class fg8 {
    public final Context a;
    public final mf5 b;
    public final mw6 c;
    public final e41 d;
    public final Executor e;
    public final mw6 f;
    public final ba1 g;
    public final ba1 h;
    public final mw6 i;

    public fg8(Context context, mf5 mf5Var, mw6 mw6Var, e41 e41Var, Executor executor, mw6 mw6Var2, ba1 ba1Var, ba1 ba1Var2, mw6 mw6Var3) {
        this.a = context;
        this.b = mf5Var;
        this.c = mw6Var;
        this.d = e41Var;
        this.e = executor;
        this.f = mw6Var2;
        this.g = ba1Var;
        this.h = ba1Var2;
        this.i = mw6Var3;
    }

    public final void a(final oe0 oe0Var, int i) {
        byte[] bArr;
        long j;
        sb0 sb0Var;
        String str;
        sb0 sb0Var2;
        int i2;
        c31 c31VarC;
        String str2;
        Integer numValueOf;
        xd0 xd0Var;
        fg8 fg8Var = this;
        oe0 oe0Var2 = oe0Var;
        byte[] bArr2 = oe0Var2.b;
        ua8 ua8VarA = fg8Var.b.a(oe0Var2.a);
        long jMax = 0;
        while (true) {
            no1 no1Var = new no1(fg8Var, oe0Var2);
            mw6 mw6Var = fg8Var.f;
            if (!((Boolean) mw6Var.m(no1Var)).booleanValue()) {
                mw6Var.m(new iw6(fg8Var, jMax, oe0Var2));
                return;
            }
            final Iterable iterable = (Iterable) mw6Var.m(new iq0(fg8Var, oe0Var2));
            if (!iterable.iterator().hasNext()) {
                return;
            }
            if (ua8VarA == null) {
                ly8.o("Uploader", "Unknown backend for %s, deleting event batch for it...", oe0Var2);
                sb0Var2 = new sb0(3, -1L);
                bArr = bArr2;
                j = jMax;
            } else {
                ArrayList<kd0> arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((ce0) it.next()).c);
                }
                if (bArr2 != null) {
                    mw6 mw6Var2 = fg8Var.i;
                    Objects.requireNonNull(mw6Var2);
                    y91 y91Var = (y91) mw6Var.m(new hb(mw6Var2, 7));
                    jd0 jd0Var = new jd0();
                    jd0Var.n = new HashMap();
                    jd0Var.f = Long.valueOf(fg8Var.g.e());
                    jd0Var.k = Long.valueOf(fg8Var.h.e());
                    jd0Var.a = "GDT_CLIENT_METRICS";
                    dw2 dw2Var = new dw2("proto");
                    y91Var.getClass();
                    gh ghVar = o96.a;
                    ghVar.getClass();
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        ghVar.h(y91Var, byteArrayOutputStream);
                    } catch (IOException unused) {
                    }
                    jd0Var.e = new xv2(dw2Var, byteArrayOutputStream.toByteArray());
                    arrayList.add(((d31) ua8VarA).a(jd0Var.b()));
                }
                d31 d31Var = (d31) ua8VarA;
                HashMap map = new HashMap();
                for (kd0 kd0Var : arrayList) {
                    String str3 = kd0Var.a;
                    if (map.containsKey(str3)) {
                        ((List) map.get(str3)).add(kd0Var);
                    } else {
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(kd0Var);
                        map.put(str3, arrayList2);
                    }
                }
                ArrayList arrayList3 = new ArrayList();
                for (Map.Entry entry : map.entrySet()) {
                    kd0 kd0Var2 = (kd0) ((List) entry.getValue()).get(0);
                    lc6 lc6Var = lc6.a;
                    long jE = d31Var.f.e();
                    long jE2 = d31Var.e.e();
                    ub0 ub0Var = new ub0(new qb0(Integer.valueOf(kd0Var2.b("sdk-version")), kd0Var2.a("model"), kd0Var2.a("hardware"), kd0Var2.a("device"), kd0Var2.a("product"), kd0Var2.a("os-uild"), kd0Var2.a("manufacturer"), kd0Var2.a("fingerprint"), kd0Var2.a("locale"), kd0Var2.a("country"), kd0Var2.a("mcc_mnc"), kd0Var2.a("application_build")));
                    try {
                        numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                        str2 = null;
                    } catch (NumberFormatException unused2) {
                        str2 = (String) entry.getKey();
                        numValueOf = null;
                    }
                    ArrayList arrayList4 = new ArrayList();
                    for (kd0 kd0Var3 : (List) entry.getValue()) {
                        byte[] bArr3 = bArr2;
                        xv2 xv2Var = kd0Var3.c;
                        byte[] bArr4 = kd0Var3.j;
                        dw2 dw2Var2 = xv2Var.a;
                        byte[] bArr5 = xv2Var.b;
                        long j2 = jMax;
                        if (dw2Var2.equals(new dw2("proto"))) {
                            xd0Var = new xd0();
                            xd0Var.f = bArr5;
                        } else {
                            if (dw2Var2.equals(new dw2("json"))) {
                                String str4 = new String(bArr5, Charset.forName("UTF-8"));
                                xd0 xd0Var2 = new xd0();
                                xd0Var2.k = str4;
                                xd0Var = xd0Var2;
                            } else {
                                String strConcat = "TRuntime.".concat("CctTransportBackend");
                                if (Log.isLoggable(strConcat, 5)) {
                                    Log.w(strConcat, "Received event of unsupported encoding " + dw2Var2 + ". Skipping...");
                                }
                            }
                            bArr2 = bArr3;
                            jMax = j2;
                        }
                        xd0Var.a = Long.valueOf(kd0Var3.d);
                        xd0Var.b = Long.valueOf(kd0Var3.e);
                        String str5 = (String) kd0Var3.f.get("tz-offset");
                        xd0Var.c = Long.valueOf(str5 == null ? 0L : Long.valueOf(str5).longValue());
                        xd0Var.n = new be0((mm5) mm5.a.get(kd0Var3.b("net-type")), (lm5) lm5.a.get(kd0Var3.b("mobile-subtype")));
                        Integer num = kd0Var3.b;
                        if (num != null) {
                            xd0Var.d = num;
                        }
                        Integer num2 = kd0Var3.g;
                        if (num2 != null) {
                            od0 od0Var = new od0(new nd0(num2));
                            on1 on1Var = on1.a;
                            xd0Var.e = new vb0(od0Var);
                        }
                        byte[] bArr6 = kd0Var3.i;
                        if (bArr6 != null || bArr4 != null) {
                            if (bArr6 == null) {
                                bArr6 = null;
                            }
                            xd0Var.p = new md0(bArr6, bArr4 != null ? bArr4 : null);
                        }
                        String strConcat2 = ((Long) xd0Var.a) == null ? " eventTimeMs" : "";
                        if (((Long) xd0Var.b) == null) {
                            strConcat2 = strConcat2.concat(" eventUptimeMs");
                        }
                        if (((Long) xd0Var.c) == null) {
                            strConcat2 = strConcat2.concat(" timezoneOffsetSeconds");
                        }
                        if (!strConcat2.isEmpty()) {
                            l0.e("Missing required properties:".concat(strConcat2));
                            return;
                        } else {
                            arrayList4.add(new yd0(((Long) xd0Var.a).longValue(), (Integer) xd0Var.d, (vb0) xd0Var.e, ((Long) xd0Var.b).longValue(), (byte[]) xd0Var.f, (String) xd0Var.k, ((Long) xd0Var.c).longValue(), (be0) xd0Var.n, (md0) xd0Var.p));
                            bArr2 = bArr3;
                            jMax = j2;
                        }
                    }
                    arrayList3.add(new zd0(jE, jE2, ub0Var, numValueOf, str2, arrayList4));
                }
                bArr = bArr2;
                j = jMax;
                tb0 tb0Var = new tb0(arrayList3);
                URL urlB = d31Var.d;
                if (bArr != null) {
                    try {
                        oy0 oy0VarA = oy0.a(bArr);
                        str = oy0VarA.b;
                        if (str == null) {
                            str = null;
                        }
                        String str6 = oy0VarA.a;
                        if (str6 != null) {
                            urlB = d31.b(str6);
                        }
                    } catch (IllegalArgumentException unused3) {
                        sb0Var = new sb0(3, -1L);
                    }
                } else {
                    str = null;
                }
                try {
                    gh ghVar2 = new gh(urlB, tb0Var, str);
                    fs fsVar = new fs(d31Var, 2);
                    int i3 = 5;
                    do {
                        c31VarC = fsVar.c(ghVar2);
                        URL url = c31VarC.b;
                        if (url != null) {
                            ly8.o("CctTransportBackend", "Following redirect to: %s", url);
                            ghVar2 = new gh(url, (tb0) ghVar2.b, (String) ghVar2.c);
                        } else {
                            ghVar2 = null;
                        }
                        if (ghVar2 == null) {
                            break;
                        } else {
                            i3--;
                        }
                    } while (i3 >= 1);
                    int i4 = c31VarC.a;
                    if (i4 == 200) {
                        sb0Var2 = new sb0(1, c31VarC.c);
                    } else {
                        if (i4 >= 500 || i4 == 404) {
                            sb0Var = new sb0(2, -1L);
                        } else if (i4 == 400) {
                            try {
                                sb0Var = new sb0(4, -1L);
                            } catch (IOException e) {
                                e = e;
                                ly8.p(e, "CctTransportBackend", "Could not make request to the backend");
                                i2 = 2;
                                sb0Var2 = new sb0(2, -1L);
                            }
                        } else {
                            sb0Var = new sb0(3, -1L);
                        }
                        sb0Var2 = sb0Var;
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            }
            i2 = 2;
            int i5 = sb0Var2.a;
            if (i5 == i2) {
                final long j3 = j;
                mw6Var.m(new dv7() { // from class: eg8
                    @Override // defpackage.dv7
                    public final Object g() {
                        fg8 fg8Var2 = this.a;
                        mw6 mw6Var3 = fg8Var2.c;
                        mw6Var3.getClass();
                        Iterable iterable2 = iterable;
                        if (iterable2.iterator().hasNext()) {
                            String strConcat3 = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(mw6.n(iterable2));
                            SQLiteDatabase sQLiteDatabaseA = mw6Var3.a();
                            sQLiteDatabaseA.beginTransaction();
                            try {
                                sQLiteDatabaseA.compileStatement(strConcat3).execute();
                                Cursor cursorRawQuery = sQLiteDatabaseA.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null);
                                while (cursorRawQuery.moveToNext()) {
                                    try {
                                        mw6Var3.j(cursorRawQuery.getInt(0), c15.MAX_RETRIES_REACHED, cursorRawQuery.getString(1));
                                    } catch (Throwable th) {
                                        cursorRawQuery.close();
                                        throw th;
                                    }
                                }
                                cursorRawQuery.close();
                                sQLiteDatabaseA.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                sQLiteDatabaseA.setTransactionSuccessful();
                                sQLiteDatabaseA.endTransaction();
                            } catch (Throwable th2) {
                                sQLiteDatabaseA.endTransaction();
                                throw th2;
                            }
                        }
                        mw6Var3.g(new iz5(fg8Var2.g.e() + j3, oe0Var));
                        return null;
                    }
                });
                this.d.d(oe0Var, i + 1, true);
                return;
            }
            fg8Var = this;
            oe0Var2 = oe0Var;
            jMax = j;
            mw6Var.m(new vf1(fg8Var, iterable));
            if (i5 == 1) {
                jMax = Math.max(jMax, sb0Var2.b);
                if (bArr != null) {
                    mw6Var.m(new bb(fg8Var, 8));
                }
            } else if (i5 == 4) {
                HashMap map2 = new HashMap();
                Iterator it2 = iterable.iterator();
                while (it2.hasNext()) {
                    String str7 = ((ce0) it2.next()).c.a;
                    if (map2.containsKey(str7)) {
                        map2.put(str7, Integer.valueOf(((Integer) map2.get(str7)).intValue() + 1));
                    } else {
                        map2.put(str7, 1);
                    }
                }
                mw6Var.m(new o32(fg8Var, map2));
            }
            bArr2 = bArr;
        }
    }
}
