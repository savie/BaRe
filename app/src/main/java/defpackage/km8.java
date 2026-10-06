package defpackage;

import android.content.ContentResolver;
import android.content.Context;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.settings.LicensesActivity;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class km8 implements vc5, jk8, ju2, a13, zv5, dh5, gg8, n59 {
    public static final lk b = new lk();
    public final Object a;

    public km8(ca3 ca3Var) {
        this.a = new File((File) ca3Var.c, "com.crashlytics.settings.json");
    }

    public static km8 n(int i) {
        return new km8(d2a.a(rt9.a(i)));
    }

    @Override // defpackage.a13
    public int a() {
        return ((ExtendedFloatingActionButton) this.a).getCollapsedSize();
    }

    @Override // defpackage.a13
    public int b() {
        return ((ExtendedFloatingActionButton) this.a).getCollapsedSize();
    }

    @Override // defpackage.ju2
    public void c(nc8 nc8Var) {
        zp1 zp1Var = new zp1("EmojiCompatInitializer");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), zp1Var);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new nu2(0, this, nc8Var, threadPoolExecutor));
    }

    @Override // defpackage.vc5
    public void d(fc5 fc5Var, boolean z) {
        if (fc5Var instanceof lr7) {
            ((lr7) fc5Var).S.k().c(false);
        }
        vc5 vc5Var = ((o8) this.a).e;
        if (vc5Var != null) {
            vc5Var.d(fc5Var, z);
        }
    }

    public ib e(ib ibVar, gy5 gy5Var, np1 np1Var, yf1 yf1Var, qn5 qn5Var, boolean z, vk9 vk9Var) {
        ib ibVarF;
        Map.Entry entry;
        m61 m61Var;
        ib ibVarF2 = ibVar;
        np1 np1VarD = np1Var;
        gz0 gz0Var = (gz0) ibVarF2.c;
        if (gz0Var.a.a.isEmpty() && !gz0Var.b) {
            return ibVarF2;
        }
        zm5.r("Can't have a merge that is an overwrite", ((qn5) np1VarD.a.a) == null);
        if (!gy5Var.isEmpty()) {
            np1VarD = np1.b.d(gy5Var, np1VarD);
        }
        qn5 qn5Var2 = gz0Var.a.a;
        np1VarD.getClass();
        HashMap map = new HashMap();
        for (Map.Entry entry2 : np1VarD.a.b) {
            map.put((m61) entry2.getKey(), new np1((ua4) entry2.getValue()));
        }
        Iterator it = map.entrySet().iterator();
        loop1: while (true) {
            ibVarF = ibVarF2;
            do {
                if (!it.hasNext()) {
                    break loop1;
                }
                entry = (Map.Entry) it.next();
                m61Var = (m61) entry.getKey();
            } while (!qn5Var2.c0(m61Var));
            ibVarF2 = f(ibVarF, new gy5(m61Var), ((np1) entry.getValue()).e(qn5Var2.m(m61Var)), yf1Var, qn5Var, z, vk9Var);
        }
        for (Map.Entry entry3 : map.entrySet()) {
            m61 m61Var2 = (m61) entry3.getKey();
            boolean z2 = !gz0Var.a(m61Var2) && ((qn5) ((np1) entry3.getValue()).a.a) == null;
            if (!qn5Var2.c0(m61Var2) && !z2) {
                ibVarF = f(ibVarF, new gy5(m61Var2), ((np1) entry3.getValue()).e(qn5Var2.m(m61Var2)), yf1Var, qn5Var, z, vk9Var);
            }
        }
        return ibVarF;
    }

    public ib f(ib ibVar, gy5 gy5Var, qn5 qn5Var, yf1 yf1Var, qn5 qn5Var2, boolean z, vk9 vk9Var) {
        gy5 gy5Var2;
        sb4 sb4VarC;
        gz0 gz0Var = (gz0) ibVar.c;
        sb4 sb4Var = gz0Var.a;
        vn5 vn5VarF = (vn5) this.a;
        if (!z) {
            vn5VarF = vn5VarF.f();
        }
        vn5 vn5Var = vn5VarF;
        boolean z2 = true;
        if (!gy5Var.isEmpty()) {
            if (!vn5Var.g() || gz0Var.c) {
                m61 m61VarK = gy5Var.k();
                gy5Var2 = gy5Var;
                if (!gz0Var.b(gy5Var2) && gy5Var2.size() > 1) {
                    return ibVar;
                }
                gy5 gy5VarP = gy5Var2.p();
                qn5 qn5VarH0 = sb4Var.a.m(m61VarK).h0(gy5VarP, qn5Var);
                boolean zEquals = m61VarK.equals(m61.d);
                sb4 sb4Var2 = gz0Var.a;
                sb4VarC = zEquals ? vn5Var.c(sb4Var2, qn5VarH0) : vn5Var.i(sb4Var2, m61VarK, qn5VarH0, gy5VarP, b, null);
            } else {
                zm5.r("An empty path should have been caught in the other branch", !gy5Var.isEmpty());
                m61 m61VarK2 = gy5Var.k();
                sb4VarC = vn5Var.l(sb4Var, sb4Var.e(m61VarK2, sb4Var.a.m(m61VarK2).h0(gy5Var.p(), qn5Var)), null);
            }
            if (!gz0Var.b && !gy5Var2.isEmpty()) {
                z2 = false;
            }
            ib ibVar2 = new ib(14, (gz0) ibVar.b, new gz0(sb4VarC, z2, vn5Var.g()));
            return l(ibVar2, gy5Var, yf1Var, new bp0(yf1Var, ibVar2, qn5Var2), vk9Var);
        }
        sb4VarC = vn5Var.l(sb4Var, new sb4(qn5Var, vn5Var.getIndex()), null);
        gy5Var2 = gy5Var;
        if (!gz0Var.b) {
            z2 = false;
        }
        ib ibVar3 = new ib(14, (gz0) ibVar.b, new gz0(sb4VarC, z2, vn5Var.g()));
        return l(ibVar3, gy5Var, yf1Var, new bp0(yf1Var, ibVar3, qn5Var2), vk9Var);
    }

    public ib g(ib ibVar, gy5 gy5Var, qn5 qn5Var, yf1 yf1Var, qn5 qn5Var2, vk9 vk9Var) {
        qn5 qn5VarL;
        qn5 qn5Var3;
        qn5 qn5VarH0 = qn5Var;
        vn5 vn5Var = (vn5) this.a;
        gz0 gz0Var = (gz0) ibVar.b;
        boolean z = gz0Var.b;
        sb4 sb4Var = gz0Var.a;
        bp0 bp0Var = new bp0(yf1Var, ibVar, qn5Var2);
        if (gy5Var.isEmpty()) {
            return ibVar.o(vn5Var.l(sb4Var, new sb4(qn5VarH0, vn5Var.getIndex()), vk9Var), true, vn5Var.g());
        }
        m61 m61VarK = gy5Var.k();
        m61 m61Var = m61.d;
        boolean zEquals = m61VarK.equals(m61Var);
        sb4 sb4Var2 = gz0Var.a;
        if (zEquals) {
            return ibVar.o(vn5Var.c(sb4Var2, qn5VarH0), z, gz0Var.c);
        }
        gy5 gy5VarP = gy5Var.p();
        qn5 qn5VarM = sb4Var2.a.m(m61VarK);
        if (gy5VarP.isEmpty()) {
            qn5Var3 = qn5VarH0;
        } else {
            if (gz0Var.a(m61VarK)) {
                qn5VarL = sb4Var.a.m(m61VarK);
            } else {
                qn5VarL = yf1Var.l(m61VarK, qn5Var2 != null ? new gz0(new sb4(qn5Var2, no4.a), true, false) : (gz0) ibVar.c);
            }
            if (qn5VarL == null) {
                qn5VarH0 = qv2.e;
            } else if (gy5VarP.i().equals(m61Var) && qn5VarL.U(gy5VarP.l()).isEmpty()) {
                qn5Var3 = qn5VarL;
            } else {
                qn5VarH0 = qn5VarL.h0(gy5VarP, qn5VarH0);
            }
            qn5Var3 = qn5VarH0;
        }
        return !qn5VarM.equals(qn5Var3) ? ibVar.o(vn5Var.i(gz0Var.a, m61VarK, qn5Var3, gy5VarP, bp0Var, vk9Var), z, vn5Var.g()) : ibVar;
    }

    @Override // defpackage.a13
    public int getPaddingEnd() {
        return ((ExtendedFloatingActionButton) this.a).getCollapsedPadding();
    }

    @Override // defpackage.a13
    public int getPaddingStart() {
        return ((ExtendedFloatingActionButton) this.a).getCollapsedPadding();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        return (NestedScrollView) this.a;
    }

    @Override // defpackage.n59
    public /* synthetic */ void h(f59 f59Var) {
        ((yf1) this.a).c((c69) f59Var);
    }

    @Override // defpackage.a13
    public ViewGroup.LayoutParams i() {
        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) this.a;
        return new ViewGroup.LayoutParams(extendedFloatingActionButton.getCollapsedSize(), extendedFloatingActionButton.getCollapsedSize());
    }

    @Override // defpackage.gg8
    public ra2 j(Uri uri) {
        return new jp7(1, uri, (ContentResolver) this.a);
    }

    @Override // defpackage.zv5
    public Object k(od odVar) {
        return ((aw5) this.a).d.Q(odVar);
    }

    public ib l(ib ibVar, gy5 gy5Var, yf1 yf1Var, un5 un5Var, vk9 vk9Var) {
        qn5 qn5VarL;
        qn5 qn5VarJ;
        vn5 vn5Var = (vn5) this.a;
        gz0 gz0Var = (gz0) ibVar.b;
        sb4 sb4VarI = gz0Var.a;
        gz0 gz0Var2 = (gz0) ibVar.c;
        sb4 sb4Var = gz0Var2.a;
        if (yf1Var.r(gy5Var) != null) {
            return ibVar;
        }
        if (gy5Var.isEmpty()) {
            zm5.r("If change path is empty, we must have complete server data", gz0Var2.b);
            if (gz0Var2.c) {
                qn5 qn5VarG = ibVar.g();
                if (!(qn5VarG instanceof q61)) {
                    qn5VarG = qv2.e;
                }
                qn5VarJ = yf1Var.m(qn5VarG);
            } else {
                qn5VarJ = ((vq) yf1Var.c).j((gy5) yf1Var.b, ibVar.g(), Collections.EMPTY_LIST, false);
            }
            sb4VarI = vn5Var.l(gz0Var.a, new sb4(qn5VarJ, vn5Var.getIndex()), vk9Var);
        } else {
            m61 m61VarK = gy5Var.k();
            if (m61VarK.equals(m61.d)) {
                zm5.r("Can't have a priority with additional path components", gy5Var.size() == 1);
                qn5 qn5VarO = yf1Var.o(gy5Var, sb4VarI.a, sb4Var.a);
                if (qn5VarO != null) {
                    sb4VarI = vn5Var.c(sb4VarI, qn5VarO);
                }
            } else {
                gy5 gy5VarP = gy5Var.p();
                if (gz0Var.a(m61VarK)) {
                    qn5 qn5VarO2 = yf1Var.o(gy5Var, sb4VarI.a, sb4Var.a);
                    qn5 qn5Var = sb4VarI.a;
                    qn5VarL = qn5VarO2 != null ? qn5Var.m(m61VarK).h0(gy5VarP, qn5VarO2) : qn5Var.m(m61VarK);
                } else {
                    qn5VarL = yf1Var.l(m61VarK, gz0Var2);
                }
                qn5 qn5Var2 = qn5VarL;
                if (qn5Var2 != null) {
                    sb4VarI = vn5Var.i(gz0Var.a, m61VarK, qn5Var2, gy5VarP, un5Var, vk9Var);
                }
            }
        }
        return ibVar.o(sb4VarI, gz0Var.b || gy5Var.isEmpty(), vn5Var.g());
    }

    public JSONObject m() throws Throwable {
        FileInputStream fileInputStream;
        JSONObject jSONObject;
        FileInputStream fileInputStream2 = null;
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Checking for cached settings...", null);
        }
        try {
            File file = (File) this.a;
            if (file.exists()) {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        jSONObject = new JSONObject(jm1.X(fileInputStream));
                        fileInputStream2 = fileInputStream;
                    } catch (Exception e) {
                        e = e;
                        Log.e("FirebaseCrashlytics", "Failed to fetch cached settings", e);
                        jm1.h(fileInputStream, "Error while closing settings cache file.");
                        return null;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    jm1.h(fileInputStream2, "Error while closing settings cache file.");
                    throw th;
                }
            } else {
                if (Log.isLoggable("FirebaseCrashlytics", 2)) {
                    Log.v("FirebaseCrashlytics", "Settings file does not exist.", null);
                }
                jSONObject = null;
            }
            jm1.h(fileInputStream2, "Error while closing settings cache file.");
            return jSONObject;
        } catch (Exception e2) {
            e = e2;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            jm1.h(fileInputStream2, "Error while closing settings cache file.");
            throw th;
        }
    }

    @Override // defpackage.vc5
    public boolean r(fc5 fc5Var) {
        o8 o8Var = (o8) this.a;
        if (fc5Var == o8Var.c) {
            return false;
        }
        o8Var.Q = ((lr7) fc5Var).T.a;
        vc5 vc5Var = o8Var.e;
        if (vc5Var != null) {
            return vc5Var.r(fc5Var);
        }
        return false;
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        return new hg8(this);
    }

    @Override // defpackage.n59
    public void zza(String str) {
        ((yf1) this.a).a(zv1.t(str));
    }

    public km8(ke keVar, yf1 yf1Var) {
        this.a = yf1Var;
        Objects.requireNonNull(keVar);
    }

    public km8() {
        this.a = new ConcurrentHashMap(16);
    }

    public km8(NestedScrollView nestedScrollView, RecyclerView recyclerView) {
        this.a = nestedScrollView;
    }

    public /* synthetic */ km8(Object obj) {
        this.a = obj;
    }

    public km8(Executor executor) {
        int i = LicensesActivity.L;
        this.a = executor;
    }

    public km8(Class cls) {
        this.a = cls.getDeclaredConstructor(Long.TYPE);
    }

    public km8(Context context) {
        this.a = context.getApplicationContext();
    }

    public km8(int i) {
        this.a = new km7(new int[i]);
    }
}
