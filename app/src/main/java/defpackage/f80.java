package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.io.Serializable;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f80 {
    public Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;
    public Object f;
    public Object g;
    public final Object h;
    public Serializable i;

    public f80(g90 g90Var, z80 z80Var) {
        this.h = new Object();
        jb9.h("exactly one of authResponse or authError should be non-null", (g90Var != null) ^ (z80Var != null));
        this.i = null;
        jb9.h("exactly one of authResponse or authException should be non-null", (z80Var != null) ^ (g90Var != null));
        if (z80Var != null) {
            if (z80Var.a == 1) {
                this.g = z80Var;
                return;
            }
            return;
        }
        this.d = g90Var;
        this.c = null;
        this.e = null;
        this.a = null;
        this.g = null;
        String str = g90Var.D;
        this.b = str == null ? g90Var.w.i : str;
    }

    public static void d(JSONObject jSONObject, String str) {
        StringBuilder sbS = dj7.s(str);
        sbS.append(jSONObject.toString());
        String string = sbS.toString();
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", string, null);
        }
    }

    public String a() {
        String str;
        if (((z80) this.g) != null) {
            return null;
        }
        n58 n58Var = (n58) this.e;
        if (n58Var != null && (str = n58Var.c) != null) {
            return str;
        }
        g90 g90Var = (g90) this.d;
        if (g90Var != null) {
            return g90Var.A;
        }
        return null;
    }

    public fa7 b(int i) {
        fa7 fa7Var = null;
        try {
            if (!dj7.a(2, i)) {
                JSONObject jSONObjectM = ((km8) this.e).m();
                if (jSONObjectM != null) {
                    fa7 fa7VarO = ((s79) this.c).o(jSONObjectM);
                    d(jSONObjectM, "Loaded cached settings: ");
                    ((fo8) this.d).getClass();
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    if (dj7.a(3, i) || fa7VarO.c >= jCurrentTimeMillis) {
                        try {
                            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                                Log.v("FirebaseCrashlytics", "Returning cached settings.", null);
                            }
                            return fa7VarO;
                        } catch (Exception e) {
                            e = e;
                            fa7Var = fa7VarO;
                            Log.e("FirebaseCrashlytics", "Failed to get cached settings", e);
                            return fa7Var;
                        }
                    }
                    if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                        Log.v("FirebaseCrashlytics", "Cached settings have expired.", null);
                        return null;
                    }
                } else if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    Log.d("FirebaseCrashlytics", "No cached settings data found.", null);
                }
            }
            return null;
        } catch (Exception e2) {
            e = e2;
        }
    }

    public fa7 c() {
        return (fa7) ((AtomicReference) this.h).get();
    }

    public void e(n58 n58Var, z80 z80Var) {
        jb9.h("exactly one of tokenResponse or authException should be non-null", (z80Var != null) ^ (n58Var != null));
        z80 z80Var2 = (z80) this.g;
        if (z80Var2 != null) {
            j15.e().f(5, null, "AuthState.update should not be called in an error state (%s), call updatewith the result of the fresh authorization response first", z80Var2);
            this.g = null;
        }
        if (z80Var != null) {
            if (z80Var.a == 2) {
                this.g = z80Var;
                return;
            }
            return;
        }
        this.e = n58Var;
        String str = n58Var.g;
        if (str != null) {
            this.b = str;
        }
        String str2 = n58Var.f;
        if (str2 != null) {
            this.a = str2;
        }
    }

    public f80() {
        this.h = new Object();
    }

    public f80(Context context, sa7 sa7Var, fo8 fo8Var, s79 s79Var, km8 km8Var, ig9 ig9Var, ka2 ka2Var) {
        AtomicReference atomicReference = new AtomicReference();
        this.h = atomicReference;
        this.i = new AtomicReference(new TaskCompletionSource());
        this.a = context;
        this.b = sa7Var;
        this.d = fo8Var;
        this.c = s79Var;
        this.e = km8Var;
        this.f = ig9Var;
        this.g = ka2Var;
        atomicReference.set(ge.u(fo8Var));
    }
}
