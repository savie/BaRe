package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class je9 {
    public static final Object f = new Object();
    public static volatile nb9 g;
    public static final AtomicInteger h;
    public final ea3 a;
    public final String b;
    public final Object c;
    public volatile int d = -1;
    public volatile Object e;

    static {
        new AtomicReference();
        h = new AtomicInteger();
    }

    public /* synthetic */ je9(ea3 ea3Var, String str, Object obj) {
        if (((Uri) ea3Var.b) == null) {
            c6.f("Must pass a valid SharedPreferences file name or ContentProvider URI");
            throw null;
        }
        this.a = ea3Var;
        this.b = str;
        this.c = obj;
    }

    public static void c(Context context) {
        Context context2;
        if (g == null) {
            Object obj = f;
            synchronized (obj) {
                try {
                    if (g == null) {
                        synchronized (obj) {
                            try {
                                nb9 nb9Var = g;
                                Context applicationContext = context.getApplicationContext();
                                if (applicationContext != null) {
                                    context = applicationContext;
                                }
                                if (nb9Var == null || nb9Var.a != context) {
                                    tb9.b();
                                    ne9.a();
                                    synchronized (wc9.class) {
                                        try {
                                            wc9 wc9Var = wc9.d;
                                            if (wc9Var != null && (context2 = (Context) wc9Var.b) != null && ((tc9) wc9Var.c) != null) {
                                                context2.getContentResolver().unregisterContentObserver((tc9) wc9.d.c);
                                            }
                                            wc9.d = null;
                                        } catch (Throwable th) {
                                            throw th;
                                        }
                                    }
                                    g = new nb9(context, ms8.T(new jq6(context, 23)));
                                    h.incrementAndGet();
                                }
                            } catch (Throwable th2) {
                                throw th2;
                            }
                        }
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
    }

    public abstract Object a(String str);

    /* JADX WARN: Code duplicated, block: B:20:0x0058 A[PHI: r2
      0x0058: PHI (r2v1 ve9) = (r2v0 ve9), (r2v5 ve9), (r2v5 ve9) binds: [B:8:0x0014, B:10:0x0022, B:16:0x0047] A[DONT_GENERATE, DONT_INLINE]] */
    public final Object b() {
        String str;
        tb9 tb9Var;
        wc9 wc9Var;
        Object objA;
        int i = h.get();
        if (this.d < i) {
            synchronized (this) {
                try {
                    if (this.d < i) {
                        nb9 nb9Var = g;
                        ve9 ve9Var = re9.a;
                        Object objA2 = null;
                        if (nb9Var != null) {
                            ve9Var = (ve9) nb9Var.b.zza();
                            if (ve9Var.b()) {
                                cc9 cc9Var = (cc9) ve9Var.a();
                                Uri uri = (Uri) this.a.b;
                                String str2 = this.b;
                                cc9Var.getClass();
                                dg7 dg7Var = uri != null ? (dg7) cc9Var.a.get(uri.toString()) : null;
                                if (dg7Var == null) {
                                    str = null;
                                } else {
                                    str = (String) dg7Var.get("".concat(str2));
                                }
                            } else {
                                str = null;
                            }
                        } else {
                            str = null;
                        }
                        if (nb9Var == null) {
                            throw new IllegalStateException("Must call PhenotypeFlag.init() first");
                        }
                        Uri uri2 = (Uri) this.a.b;
                        Context context = nb9Var.a;
                        if (uri2 == null) {
                            k50 k50Var = ne9.a;
                            throw null;
                        }
                        if (dd9.a(context, uri2)) {
                            ContentResolver contentResolver = nb9Var.a.getContentResolver();
                            Uri uri3 = (Uri) this.a.b;
                            k50 k50Var2 = tb9.g;
                            synchronized (tb9.class) {
                                k50 k50Var3 = tb9.g;
                                tb9Var = (tb9) k50Var3.get(uri3);
                                if (tb9Var == null) {
                                    try {
                                        tb9 tb9Var2 = new tb9(contentResolver, uri3);
                                        try {
                                            k50Var3.put(uri3, tb9Var2);
                                        } catch (SecurityException unused) {
                                        }
                                        tb9Var = tb9Var2;
                                    } catch (SecurityException unused2) {
                                    }
                                }
                            }
                        } else {
                            tb9Var = null;
                        }
                        Object objA3 = (tb9Var == null || (objA = tb9Var.a(this.b)) == null) ? null : a((String) objA);
                        if (objA3 == null) {
                            if (!this.a.a) {
                                Context context2 = nb9Var.a;
                                synchronized (wc9.class) {
                                    try {
                                        if (wc9.d == null) {
                                            wc9.d = lg7.d(context2, "com.google.android.providers.gsf.permission.READ_GSERVICES") == 0 ? new wc9(context2, 0) : new wc9(0);
                                        }
                                        wc9Var = wc9.d;
                                    } catch (Throwable th) {
                                        throw th;
                                    }
                                }
                                String strI = wc9Var.i(this.a.a ? null : this.b);
                                if (strI != null) {
                                    objA2 = a(strI);
                                }
                            }
                            objA3 = objA2 == null ? this.c : objA2;
                        }
                        if (ve9Var.b()) {
                            objA3 = str == null ? this.c : a(str);
                        }
                        this.e = objA3;
                        this.d = i;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        return this.e;
    }
}
