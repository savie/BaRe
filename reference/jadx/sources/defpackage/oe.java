package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.google.android.gms.tasks.Tasks;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.Argon2;
import com.microsoft.identity.common.java.authscheme.BearerAuthenticationSchemeInternal;
import java.io.File;
import java.io.FileWriter;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class oe implements jk8, uk7, xd2, z23, SuccessContinuation, qa2, n59 {
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public oe(int i) {
        this.a = i;
        switch (i) {
            case 8:
                this.b = new ArrayList();
                break;
            case Argon2.V10 /* 16 */:
                this.b = new lr6(128);
                this.c = new lr6(256);
                break;
            default:
                this.b = new ty3(3);
                this.c = new s27();
                break;
        }
    }

    public static oe a(View view) {
        if (((TextInputEditText) ms8.u(view, R.id.et)) != null) {
            TextInputLayout textInputLayout = (TextInputLayout) view;
            return new oe(1, textInputLayout, textInputLayout);
        }
        f6.n("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.et)));
        return null;
    }

    @Override // defpackage.qa2
    public void b(Exception exc) {
        jj7 jj7Var = (jj7) this.c;
        bh5 bh5Var = (bh5) this.b;
        bh5 bh5Var2 = jj7Var.f;
        if (bh5Var2 == null || bh5Var2 != bh5Var) {
            return;
        }
        jj7 jj7Var2 = (jj7) this.c;
        bh5 bh5Var3 = (bh5) this.b;
        td2 td2Var = jj7Var2.b;
        ia2 ia2Var = jj7Var2.k;
        ra2 ra2Var = bh5Var3.c;
        td2Var.c(ia2Var, exc, ra2Var, ra2Var.e());
    }

    @Override // defpackage.xd2
    public void c(ev5 ev5Var) {
        e(ev5Var, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Annotation d(Class cls, Class cls2) {
        Annotation annotation;
        s27 s27Var = (s27) this.c;
        r27 r27Var = (r27) s27Var.get(cls);
        if (r27Var == null) {
            r27Var = new r27(cls);
            s27Var.put(cls, r27Var);
        }
        if (!r27Var.containsKey(cls2)) {
            Class superclass = r27Var.a;
            while (true) {
                if (superclass == null) {
                    annotation = null;
                    break;
                }
                annotation = superclass.getAnnotation(cls2);
                if (annotation != null) {
                    break;
                }
                superclass = superclass.getSuperclass();
            }
            if (annotation != null) {
                r27Var.put(cls2, annotation);
            }
        }
        return (Annotation) r27Var.get(cls2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.xd2
    public void e(ev5 ev5Var, xd2 xd2Var) {
        if (xd2Var != null) {
            xd2Var.c(ev5Var);
        }
        x46 x46VarC = ev5Var.c();
        for (jk5 jk5Var : (ArrayList) this.b) {
            String strReference = jk5Var.reference();
            String strPrefix = jk5Var.prefix();
            if (x46VarC.f(strReference) == null) {
            }
        }
        jk5 jk5Var2 = (jk5) this.c;
        if (jk5Var2 != null) {
            ev5Var.e(jk5Var2.reference());
        }
    }

    @Override // defpackage.qa2
    public void f(Object obj) {
        jj7 jj7Var = (jj7) this.c;
        bh5 bh5Var = (bh5) this.b;
        bh5 bh5Var2 = jj7Var.f;
        if (bh5Var2 == null || bh5Var2 != bh5Var) {
            return;
        }
        jj7 jj7Var2 = (jj7) this.c;
        bh5 bh5Var3 = (bh5) this.b;
        km2 km2Var = jj7Var2.a.p;
        if (obj == null || !km2Var.c(bh5Var3.c.e())) {
            td2 td2Var = jj7Var2.b;
            jo4 jo4Var = bh5Var3.a;
            ra2 ra2Var = bh5Var3.c;
            td2Var.b(jo4Var, obj, ra2Var, ra2Var.e(), jj7Var2.k);
            return;
        }
        jj7Var2.e = obj;
        td2 td2Var2 = jj7Var2.b;
        td2Var2.V = 2;
        dx2 dx2Var = td2Var2.H;
        (dx2Var.x ? dx2Var.p : dx2Var.n).execute(td2Var2);
    }

    public xv1 g(vb8 vb8Var, Class cls) throws yv1 {
        xv1 xv1Var = (xv1) vb8Var.getAnnotation(xv1.class);
        if (xv1Var != null && ((at2) vb8Var.getAnnotation(at2.class)) == null) {
            throw new yv1("Element annotation required for %s", vb8Var);
        }
        if (xv1Var != null) {
            return xv1Var;
        }
        xv1 xv1Var2 = (xv1) d(cls, xv1.class);
        if (xv1Var2 == null || ((no6) d(cls, no6.class)) != null) {
            return xv1Var2;
        }
        throw new yv1("Root annotation required for %s", cls);
    }

    @Override // defpackage.ea6
    public Object get() {
        b05 b05Var = new b05();
        sl4 sl4Var = new sl4();
        Object obj = ((ea6) this.b).get();
        ea6 ea6Var = (ea6) this.c;
        return new mw6(b05Var, sl4Var, ld0.f, (t57) obj, ea6Var);
    }

    @Override // defpackage.jk8
    public View getRoot() {
        switch (this.a) {
            case 1:
                return (TextInputLayout) this.b;
            default:
                return (MaterialCardView) this.b;
        }
    }

    @Override // defpackage.n59
    public void h(f59 f59Var) {
        yf1 yf1Var = (yf1) this.b;
        v59 v59Var = (v59) f59Var;
        if (!TextUtils.isEmpty(v59Var.f)) {
            yf1Var.f(new wc9(v59Var.f, v59Var.e, (ua9) null));
        } else {
            ((ke) this.c).t(new b69(v59Var.b, v59Var.a, Long.valueOf(v59Var.d), BearerAuthenticationSchemeInternal.SCHEME_BEARER), null, null, Boolean.valueOf(v59Var.c), null, yf1Var, this);
        }
    }

    public w00 i() {
        if (((w00) this.c) == null) {
            this.c = new w00(this);
        }
        return (w00) this.c;
    }

    public void j(int i, int i2, int i3, int i4) {
        r21 r21Var = (r21) this.c;
        r21Var.d.set(i, i2, i3, i4);
        Rect rect = r21Var.c;
        super/*android.view.View*/.setPadding(i + rect.left, i2 + rect.top, i3 + rect.right, i4 + rect.bottom);
    }

    @Override // defpackage.uk7
    public StackTraceElement[] l(StackTraceElement[] stackTraceElementArr) {
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        uk7[] uk7VarArr = (uk7[]) this.b;
        StackTraceElement[] stackTraceElementArrL = stackTraceElementArr;
        for (int i = 0; i < 1; i++) {
            uk7 uk7Var = uk7VarArr[i];
            if (stackTraceElementArrL.length <= 1024) {
                break;
            }
            stackTraceElementArrL = uk7Var.l(stackTraceElementArr);
        }
        return stackTraceElementArrL.length > 1024 ? ((lk) this.c).l(stackTraceElementArrL) : stackTraceElementArrL;
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public Task then(Object obj) throws Throwable {
        FileWriter fileWriter;
        f80 f80Var = (f80) this.c;
        JSONObject jSONObject = (JSONObject) ((o02) ((s02) this.b).c).a.submit(new la7(this, 0)).get();
        FileWriter fileWriter2 = null;
        if (jSONObject != null) {
            fa7 fa7VarO = ((s79) f80Var.c).o(jSONObject);
            km8 km8Var = (km8) f80Var.e;
            long j = fa7VarO.c;
            km8Var.getClass();
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                Log.v("FirebaseCrashlytics", "Writing settings to cache file...", null);
            }
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter((File) km8Var.a);
                try {
                    try {
                        fileWriter.write(jSONObject.toString());
                        fileWriter.flush();
                    } catch (Throwable th) {
                        th = th;
                        fileWriter2 = fileWriter;
                        jm1.h(fileWriter2, "Failed to close settings writer.");
                        throw th;
                    }
                } catch (Exception e) {
                    e = e;
                    Log.e("FirebaseCrashlytics", "Failed to cache settings", e);
                }
            } catch (Exception e2) {
                e = e2;
                fileWriter = null;
            } catch (Throwable th2) {
                th = th2;
                jm1.h(fileWriter2, "Failed to close settings writer.");
                throw th;
            }
            jm1.h(fileWriter, "Failed to close settings writer.");
            f80.d(jSONObject, "Loaded settings: ");
            String str = ((sa7) f80Var.b).f;
            SharedPreferences.Editor editorEdit = ((Context) f80Var.a).getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
            editorEdit.putString("existing_instance_identifier", str);
            editorEdit.apply();
            ((AtomicReference) f80Var.h).set(fa7VarO);
            ((TaskCompletionSource) ((AtomicReference) f80Var.i).get()).trySetResult(fa7VarO);
        }
        return Tasks.forResult(null);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.b).a(zv1.t(str));
    }

    public /* synthetic */ oe(int i, boolean z) {
        this.a = i;
    }

    public /* synthetic */ oe(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public oe(String str, yc9 yc9Var, b05 b05Var) {
        this.a = 0;
        this.c = str;
        this.b = yc9Var;
    }

    public oe(uk7[] uk7VarArr) {
        this.a = 7;
        this.b = uk7VarArr;
        this.c = new lk();
    }

    public oe(Context context) {
        this.a = 5;
        this.b = context;
        this.c = null;
    }

    public oe(x44 x44Var) {
        this.a = 13;
        this.b = new bq1();
        this.c = x44Var;
    }

    public /* synthetic */ oe(int i, Object obj, Object obj2) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public oe(r21 r21Var) {
        this.a = 3;
        this.c = r21Var;
    }
}
