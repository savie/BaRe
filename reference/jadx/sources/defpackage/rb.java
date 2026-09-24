package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.Toolbar;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.appbar.AppBarLayout;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.messagescalls.backuprestore.CallsBackupRestoreActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public class rb implements ls5, qp, zi0, ta4, z23, dh5, pe2, vl2, w6, za2, w23, dc5, v79 {
    public static rb c;
    public static final w55 d = new w55();
    public static final oi9 e = new oi9();
    public final /* synthetic */ int a;
    public Object b;

    public rb(int i) {
        zi9 zi9Var;
        this.a = i;
        switch (i) {
            case 1:
                od5 od5Var = d;
                s96 s96Var = s96.c;
                try {
                    od5Var = (od5) Class.forName("androidx.datastore.preferences.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
                } catch (Exception unused) {
                }
                od5[] od5VarArr = {xu3.a, od5Var};
                x55 x55Var = new x55();
                x55Var.a = od5VarArr;
                Charset charset = yd4.a;
                this.b = x55Var;
                break;
            case 2:
                try {
                    zi9Var = (zi9) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", null).invoke(null, null);
                } catch (Exception unused2) {
                    zi9Var = e;
                }
                pi9 pi9Var = new pi9(eh9.a, zi9Var);
                Charset charset2 = vh9.a;
                this.b = pi9Var;
                break;
            case 10:
                this.b = new lv1(10);
                break;
            case 27:
                break;
            default:
                ov7 ov7Var = new ov7();
                ov7Var.a = true;
                ov7Var.b = false;
                ov7Var.c = null;
                new kh3();
                this.b = ov7Var;
                break;
        }
    }

    public static synchronized rb t() {
        try {
            if (c == null) {
                c = new rb(0);
            }
        } catch (Throwable th) {
            throw th;
        }
        return c;
    }

    @Override // defpackage.vl2
    public Class a() {
        return Drawable.class;
    }

    @Override // defpackage.vl2
    public /* bridge */ /* synthetic */ void b(Object obj) {
    }

    @Override // defpackage.za2
    public void c() {
        ((eg6) this.b).b();
    }

    @Override // defpackage.w6
    public boolean d(View view) {
        DrawerLayout drawerLayout = (DrawerLayout) this.b;
        if (!DrawerLayout.j(view) || drawerLayout.f(view) == 2) {
            return false;
        }
        drawerLayout.b(view);
        return true;
    }

    @Override // defpackage.dc5
    public boolean e(fc5 fc5Var, MenuItem menuItem) {
        return false;
    }

    @Override // defpackage.pe2
    public int f() {
        return j() | (j() << 8);
    }

    @Override // defpackage.ta4
    public Object g(gy5 gy5Var, Object obj, Object obj2) {
        switch (this.a) {
            case 8:
                return ((np1) obj2).c(((gy5) this.b).e(gy5Var), (qn5) obj);
            default:
                lu7 lu7Var = (lu7) obj;
                bv7 bv7Var = (bv7) this.b;
                av7 av7Var = bv7Var.f;
                if (!gy5Var.isEmpty() && lu7Var.g()) {
                    qc6 qc6Var = lu7Var.d().a;
                    qc6 qc6VarK = bv7.k(qc6Var);
                    bv7Var.m(qc6Var);
                    av7Var.c(qc6VarK);
                    return null;
                }
                Iterator it = lu7Var.e().iterator();
                while (it.hasNext()) {
                    qc6 qc6Var2 = ((ik8) it.next()).a;
                    qc6 qc6VarK2 = bv7.k(qc6Var2);
                    bv7Var.m(qc6Var2);
                    av7Var.c(qc6VarK2);
                }
                return null;
        }
    }

    @Override // defpackage.ea6
    public Object get() {
        switch (this.a) {
            case XmlPullParser.COMMENT /* 9 */:
                return new l22(0, (Context) ((rb) this.b).b, new b05(), new sl4());
            case 14:
                String packageName = ((Context) ((ea6) this.b).get()).getPackageName();
                if (packageName != null) {
                    return packageName;
                }
                f6.n("Cannot return null from a non-@Nullable @Provides method");
                return null;
            case 17:
                return this.b;
            default:
                return new r87((b97) ((ca6) this.b).get());
        }
    }

    @Override // defpackage.pe2
    public int i(byte[] bArr, int i) throws oe2 {
        int i2 = 0;
        int i3 = 0;
        while (i2 < i && (i3 = ((InputStream) this.b).read(bArr, i2, i - i2)) != -1) {
            i2 += i3;
        }
        if (i2 == 0 && i3 == -1) {
            throw new oe2();
        }
        return i2;
    }

    @Override // defpackage.pe2
    public short j() throws IOException {
        int i = ((InputStream) this.b).read();
        if (i != -1) {
            return (short) i;
        }
        throw new oe2();
    }

    @Override // defpackage.vl2
    public Object k(int i, Resources.Theme theme, Resources resources) {
        Context context = (Context) this.b;
        return w13.j(context, context, i, theme);
    }

    @Override // defpackage.za2
    public Object l() {
        eg6 eg6Var = (eg6) this.b;
        eg6Var.reset();
        return eg6Var;
    }

    @Override // defpackage.dc5
    public void m(fc5 fc5Var) {
        Toolbar toolbar = (Toolbar) this.b;
        o8 o8Var = toolbar.a.L;
        if (o8Var == null || !o8Var.k()) {
            Iterator it = ((CopyOnWriteArrayList) toolbar.b0.b).iterator();
            while (it.hasNext()) {
                ((xc5) it.next()).d(fc5Var);
            }
        }
        nh nhVar = toolbar.j0;
        if (nhVar != null) {
            nhVar.m(fc5Var);
        }
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Override // defpackage.ls5
    public tv8 n(View view, tv8 tv8Var) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = 1;
        switch (this.a) {
            case 3:
                boolean z = false;
                AppBarLayout appBarLayout = (AppBarLayout) this.b;
                tv8 tv8Var2 = appBarLayout.getFitsSystemWindows() ? tv8Var : null;
                if (!Objects.equals(appBarLayout.k, tv8Var2)) {
                    appBarLayout.k = tv8Var2;
                    if (appBarLayout.O != null && appBarLayout.getTopInset() > 0) {
                        z = true;
                    }
                    appBarLayout.setWillNotDraw(!z);
                    appBarLayout.requestLayout();
                }
                return tv8Var;
            default:
                int iD = tv8Var.d();
                fo foVar = (fo) this.b;
                Context context = foVar.r;
                int iD2 = tv8Var.d();
                ActionBarContextView actionBarContextView = foVar.M;
                if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
                    i = 0;
                    i2 = 0;
                } else {
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) foVar.M.getLayoutParams();
                    if (foVar.M.isShown()) {
                        if (foVar.t0 == null) {
                            foVar.t0 = new Rect();
                            foVar.u0 = new Rect();
                        }
                        Rect rect = foVar.t0;
                        Rect rect2 = foVar.u0;
                        rect.set(tv8Var.b(), tv8Var.d(), tv8Var.c(), tv8Var.a());
                        ViewGroup viewGroup = foVar.R;
                        if (Build.VERSION.SDK_INT >= 29) {
                            boolean z2 = xm8.a;
                            tm8.a(viewGroup, rect, rect2);
                            i3 = 0;
                        } else {
                            if (xm8.a) {
                                i3 = 0;
                            } else {
                                xm8.a = true;
                                i3 = 0;
                                try {
                                    Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
                                    xm8.b = declaredMethod;
                                    if (!declaredMethod.isAccessible()) {
                                        xm8.b.setAccessible(true);
                                    }
                                } catch (NoSuchMethodException unused) {
                                    Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
                                }
                            }
                            Method method = xm8.b;
                            if (method != null) {
                                try {
                                    method.invoke(viewGroup, rect, rect2);
                                } catch (Exception e2) {
                                    Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e2);
                                }
                            }
                        }
                        int i6 = rect.top;
                        int i7 = rect.left;
                        int i8 = rect.right;
                        ViewGroup viewGroup2 = foVar.R;
                        WeakHashMap weakHashMap = dl8.a;
                        tv8 tv8VarA = vk8.a(viewGroup2);
                        int iB = tv8VarA == null ? i3 : tv8VarA.b();
                        int iC = tv8VarA == null ? i3 : tv8VarA.c();
                        if (marginLayoutParams.topMargin == i6 && marginLayoutParams.leftMargin == i7 && marginLayoutParams.rightMargin == i8) {
                            i4 = i3;
                        } else {
                            marginLayoutParams.topMargin = i6;
                            marginLayoutParams.leftMargin = i7;
                            marginLayoutParams.rightMargin = i8;
                            i4 = 1;
                        }
                        if (i6 <= 0 || foVar.T != null) {
                            View view2 = foVar.T;
                            if (view2 != null) {
                                ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view2.getLayoutParams();
                                int i9 = marginLayoutParams2.height;
                                int i10 = marginLayoutParams.topMargin;
                                if (i9 != i10 || marginLayoutParams2.leftMargin != iB || marginLayoutParams2.rightMargin != iC) {
                                    marginLayoutParams2.height = i10;
                                    marginLayoutParams2.leftMargin = iB;
                                    marginLayoutParams2.rightMargin = iC;
                                    foVar.T.setLayoutParams(marginLayoutParams2);
                                }
                            }
                        } else {
                            View view3 = new View(context);
                            foVar.T = view3;
                            view3.setVisibility(8);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                            layoutParams.leftMargin = iB;
                            layoutParams.rightMargin = iC;
                            foVar.R.addView(foVar.T, -1, layoutParams);
                        }
                        View view4 = foVar.T;
                        i5 = view4 == null ? i3 : 1;
                        if (i5 != 0 && view4.getVisibility() != 0) {
                            View view5 = foVar.T;
                            view5.setBackgroundColor((view5.getWindowSystemUiVisibility() & 8192) != 0 ? context.getColor(R.color.abc_decor_view_status_guard_light) : context.getColor(R.color.abc_decor_view_status_guard));
                        }
                        if (!foVar.Y && i5 != 0) {
                            iD2 = i3;
                        }
                        i2 = i5;
                        i5 = i4;
                        i = i3;
                        break;
                    } else {
                        i = 0;
                        if (marginLayoutParams.topMargin != 0) {
                            marginLayoutParams.topMargin = 0;
                            i2 = 0;
                        } else {
                            i2 = 0;
                            i5 = 0;
                        }
                    }
                    if (i5 != 0) {
                        foVar.M.setLayoutParams(marginLayoutParams);
                    }
                }
                View view6 = foVar.T;
                if (view6 != null) {
                    if (i2 == 0) {
                        i = 8;
                    }
                    view6.setVisibility(i);
                }
                return dl8.i(view, iD != iD2 ? tv8Var.f(tv8Var.b(), iD2, tv8Var.c(), tv8Var.a()) : tv8Var);
        }
    }

    @Override // defpackage.zi0
    public void o(xy7 xy7Var) {
        CallsBackupRestoreActivity callsBackupRestoreActivity = (CallsBackupRestoreActivity) this.b;
        m01 m01Var = callsBackupRestoreActivity.T;
        if (m01Var == null) {
            pe4.F("mAdapter");
            throw null;
        }
        z11 z11Var = new z11(m01Var.l(), xy7Var);
        if (xy7Var.e.contains(q05.CLOUD)) {
            sa1.R(callsBackupRestoreActivity, null, new qf(2, callsBackupRestoreActivity, z11Var), 1);
        } else {
            callsBackupRestoreActivity.a0().c(z11.class, z11Var);
        }
    }

    public void r(w9 w9Var) {
        RecyclerView recyclerView = (RecyclerView) this.b;
        int i = w9Var.a;
        if (i == 1) {
            recyclerView.y.j0(w9Var.b, w9Var.d);
            return;
        }
        if (i == 2) {
            recyclerView.y.m0(w9Var.b, w9Var.d);
        } else if (i == 4) {
            recyclerView.y.o0(recyclerView, w9Var.b, w9Var.d);
        } else {
            if (i != 8) {
                return;
            }
            recyclerView.y.l0(w9Var.b, w9Var.d);
        }
    }

    public fh6 s(int i) {
        RecyclerView recyclerView = (RecyclerView) this.b;
        int iH = recyclerView.f.h();
        fh6 fh6Var = null;
        for (int i2 = 0; i2 < iH; i2++) {
            fh6 fh6VarL = RecyclerView.L(recyclerView.f.g(i2));
            if (fh6VarL != null && !fh6VarL.i() && fh6VarL.c == i) {
                if (!recyclerView.f.c.contains(fh6VarL.a)) {
                    fh6Var = fh6VarL;
                    break;
                }
                fh6Var = fh6VarL;
            }
        }
        if (fh6Var != null) {
            if (!recyclerView.f.c.contains(fh6Var.a)) {
                return fh6Var;
            }
            if (RecyclerView.T0) {
                Log.d("RecyclerView", "assuming view holder cannot be find because it is hidden");
            }
        }
        return null;
    }

    @Override // defpackage.pe2
    public long skip(long j) throws IOException {
        InputStream inputStream = (InputStream) this.b;
        if (j < 0) {
            return 0L;
        }
        long j2 = j;
        while (j2 > 0) {
            long jSkip = inputStream.skip(j2);
            if (jSkip <= 0) {
                if (inputStream.read() == -1) {
                    break;
                }
                jSkip = 1;
            }
            j2 -= jSkip;
        }
        return j - j2;
    }

    public void u(Object obj, int i, int i2) {
        int i3;
        int i4;
        RecyclerView recyclerView = (RecyclerView) this.b;
        int iH = recyclerView.f.h();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < iH; i6++) {
            View viewG = recyclerView.f.g(i6);
            fh6 fh6VarL = RecyclerView.L(viewG);
            if (fh6VarL != null && !fh6VarL.p() && (i4 = fh6VarL.c) >= i && i4 < i5) {
                fh6VarL.a(2);
                if (obj == null) {
                    fh6VarL.a(1024);
                } else if ((1024 & fh6VarL.j) == 0) {
                    if (fh6VarL.k == null) {
                        ArrayList arrayList = new ArrayList();
                        fh6VarL.k = arrayList;
                        fh6VarL.l = Collections.unmodifiableList(arrayList);
                    }
                    fh6VarL.k.add(obj);
                }
                ((qg6) viewG.getLayoutParams()).c = true;
            }
        }
        vg6 vg6Var = recyclerView.c;
        ArrayList arrayList2 = (ArrayList) vg6Var.e;
        for (int size = arrayList2.size() - 1; size >= 0; size--) {
            fh6 fh6Var = (fh6) arrayList2.get(size);
            if (fh6Var != null && (i3 = fh6Var.c) >= i && i3 < i5) {
                fh6Var.a(2);
                vg6Var.h(size);
            }
        }
        recyclerView.B0 = true;
    }

    public void v(int i, int i2) {
        RecyclerView recyclerView = (RecyclerView) this.b;
        int iH = recyclerView.f.h();
        for (int i3 = 0; i3 < iH; i3++) {
            fh6 fh6VarL = RecyclerView.L(recyclerView.f.g(i3));
            if (fh6VarL != null && !fh6VarL.p() && fh6VarL.c >= i) {
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert attached child " + i3 + " holder " + fh6VarL + " now at position " + (fh6VarL.c + i2));
                }
                fh6VarL.m(i2, false);
                recyclerView.x0.f = true;
            }
        }
        ArrayList arrayList = (ArrayList) recyclerView.c.e;
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            fh6 fh6Var = (fh6) arrayList.get(i4);
            if (fh6Var != null && fh6Var.c >= i) {
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForInsert cached " + i4 + " holder " + fh6Var + " now at position " + (fh6Var.c + i2));
                }
                fh6Var.m(i2, false);
            }
        }
        recyclerView.requestLayout();
        recyclerView.A0 = true;
    }

    public void w(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        RecyclerView recyclerView = (RecyclerView) this.b;
        int iH = recyclerView.f.h();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < iH; i11++) {
            fh6 fh6VarL = RecyclerView.L(recyclerView.f.g(i11));
            if (fh6VarL != null && (i9 = fh6VarL.c) >= i4 && i9 <= i3) {
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove attached child " + i11 + " holder " + fh6VarL);
                }
                if (fh6VarL.c == i) {
                    fh6VarL.m(i2 - i, false);
                } else {
                    fh6VarL.m(i5, false);
                }
                recyclerView.x0.f = true;
            }
        }
        ArrayList arrayList = (ArrayList) recyclerView.c.e;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        int size = arrayList.size();
        for (int i12 = 0; i12 < size; i12++) {
            fh6 fh6Var = (fh6) arrayList.get(i12);
            if (fh6Var != null && (i8 = fh6Var.c) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    fh6Var.m(i2 - i, false);
                } else {
                    fh6Var.m(i10, false);
                }
                if (RecyclerView.T0) {
                    Log.d("RecyclerView", "offsetPositionRecordsForMove cached child " + i12 + " holder " + fh6Var);
                }
            }
        }
        recyclerView.requestLayout();
        recyclerView.A0 = true;
    }

    public void x(float f, float f2, float f3) {
        e06 e06Var = (e06) this.b;
        if (e06Var.d() < e06Var.e || f < 1.0f) {
            e06Var.x.postScale(f, f, f2, f3);
            e06Var.a();
        }
    }

    @Override // defpackage.dh5
    public ch5 y(ai5 ai5Var) {
        switch (this.a) {
            case 10:
                return new tc2((lv1) this.b);
            default:
                return new wl2((Context) this.b, this);
        }
    }

    @Override // defpackage.v79
    public d89 zza(Class cls) {
        for (v79 v79Var : (v79[]) this.b) {
            if (v79Var.mo73zzb(cls)) {
                return v79Var.zza(cls);
            }
        }
        g84.j("No factory is available for message type: ".concat(cls.getName()));
        return null;
    }

    @Override // defpackage.v79
    /* JADX INFO: renamed from: zzb */
    public boolean mo73zzb(Class cls) {
        for (v79 v79Var : (v79[]) this.b) {
            if (v79Var.mo73zzb(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.qp
    public void h(int i) {
    }

    @Override // defpackage.qp
    public void p(int i) {
    }

    @Override // defpackage.qp
    public void q(int i, float f) {
    }

    public rb(JSONArray jSONArray) {
        this.a = 20;
        ArrayList arrayList = new ArrayList();
        if (jSONArray != null) {
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i);
                if (jSONObjectOptJSONObject != null) {
                    arrayList.add(new t76(jSONObjectOptJSONObject));
                }
            }
        }
        this.b = arrayList;
    }

    public rb(InputStream inputStream, m35 m35Var) {
        this.a = 16;
        eg6 eg6Var = new eg6(inputStream, m35Var);
        this.b = eg6Var;
        eg6Var.mark(yr5.n);
    }

    public /* synthetic */ rb(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    public rb(boolean z) {
        this.a = 6;
        this.b = new AtomicBoolean(z);
    }
}
