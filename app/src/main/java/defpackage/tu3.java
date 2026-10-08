package defpackage;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class tu3 implements Runnable {
    public static final ThreadLocal e = new ThreadLocal();
    public static final cl7 f = new cl7(6);
    public long b;
    public long c;
    public final ArrayList a = new ArrayList();
    public final ArrayList d = new ArrayList();

    public static fh6 c(RecyclerView recyclerView, int i, long j) {
        int iH = recyclerView.f.h();
        for (int i2 = 0; i2 < iH; i2++) {
            fh6 fh6VarL = RecyclerView.L(recyclerView.f.g(i2));
            if (fh6VarL.c == i && !fh6VarL.g()) {
                return null;
            }
        }
        vg6 vg6Var = recyclerView.c;
        if (j == Long.MAX_VALUE) {
            try {
                if (y88.a()) {
                    Trace.beginSection("RV Prefetch forced - needed next frame");
                }
            } finally {
                recyclerView.T(false);
                Trace.endSection();
            }
        }
        recyclerView.S();
        fh6 fh6VarL2 = vg6Var.l(i, j);
        if (fh6VarL2 != null) {
            if (!fh6VarL2.f() || fh6VarL2.g()) {
                vg6Var.a(fh6VarL2, false);
            } else {
                vg6Var.i(fh6VarL2.a);
            }
        }
        return fh6VarL2;
    }

    public final void a(RecyclerView recyclerView, int i, int i2) {
        if (recyclerView.K) {
            if (RecyclerView.S0 && !this.a.contains(recyclerView)) {
                l0.e("attempting to post unregistered view!");
                return;
            } else if (this.b == 0) {
                this.b = recyclerView.getNanoTime();
                recyclerView.post(this);
            }
        }
        ru3 ru3Var = recyclerView.w0;
        ru3Var.b = i;
        ru3Var.c = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [int] */
    /* JADX WARN: Type inference failed for: r11v6 */
    public final void b(long j) {
        su3 su3Var;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        su3 su3Var2;
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            RecyclerView recyclerView3 = (RecyclerView) arrayList.get(i2);
            int windowVisibility = recyclerView3.getWindowVisibility();
            ru3 ru3Var = recyclerView3.w0;
            if (windowVisibility == 0) {
                ru3Var.c(recyclerView3, false);
                i += ru3Var.d;
            }
        }
        ArrayList arrayList2 = this.d;
        arrayList2.ensureCapacity(i);
        int i3 = 0;
        int i4 = 0;
        while (i3 < size) {
            RecyclerView recyclerView4 = (RecyclerView) arrayList.get(i3);
            if (recyclerView4.getWindowVisibility() == 0) {
                ru3 ru3Var2 = recyclerView4.w0;
                int iAbs = Math.abs(ru3Var2.c) + Math.abs(ru3Var2.b);
                for (?? r11 = z; r11 < ru3Var2.d * 2; r11 += 2) {
                    if (i4 >= arrayList2.size()) {
                        su3Var2 = new su3();
                        arrayList2.add(su3Var2);
                    } else {
                        su3Var2 = (su3) arrayList2.get(i4);
                    }
                    int[] iArr = (int[]) ru3Var2.e;
                    int i5 = iArr[r11 + 1];
                    if (i5 <= iAbs) {
                        z = true;
                    }
                    su3Var2.a = z;
                    su3Var2.b = iAbs;
                    su3Var2.c = i5;
                    su3Var2.d = recyclerView4;
                    su3Var2.e = iArr[r11];
                    i4++;
                    z = false;
                }
            }
            i3++;
            z = false;
        }
        Collections.sort(arrayList2, f);
        for (int i6 = 0; i6 < arrayList2.size() && (recyclerView = (su3Var = (su3) arrayList2.get(i6)).d) != null; i6++) {
            fh6 fh6VarC = c(recyclerView, su3Var.e, su3Var.a ? Long.MAX_VALUE : j);
            if (fh6VarC != null && fh6VarC.b != null && fh6VarC.f() && !fh6VarC.g() && (recyclerView2 = (RecyclerView) fh6VarC.b.get()) != null) {
                if (recyclerView2.U && recyclerView2.f.h() != 0) {
                    vg6 vg6Var = recyclerView2.c;
                    ng6 ng6Var = recyclerView2.g0;
                    if (ng6Var != null) {
                        ng6Var.e();
                    }
                    a aVar = recyclerView2.y;
                    if (aVar != null) {
                        aVar.w0(vg6Var);
                        recyclerView2.y.x0(vg6Var);
                    }
                    ((ArrayList) vg6Var.c).clear();
                    vg6Var.g();
                }
                ru3 ru3Var3 = recyclerView2.w0;
                ru3Var3.c(recyclerView2, true);
                if (ru3Var3.d != 0) {
                    try {
                        Trace.beginSection(j == Long.MAX_VALUE ? "RV Nested Prefetch" : "RV Nested Prefetch forced - needed next frame");
                        bh6 bh6Var = recyclerView2.x0;
                        hg6 hg6Var = recyclerView2.x;
                        bh6Var.d = 1;
                        bh6Var.e = hg6Var.b();
                        bh6Var.g = false;
                        bh6Var.h = false;
                        bh6Var.i = false;
                        for (int i7 = 0; i7 < ru3Var3.d * 2; i7 += 2) {
                            c(recyclerView2, ((int[]) ru3Var3.e)[i7], j);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        Trace.endSection();
                        throw th;
                    }
                }
            }
            su3Var.a = false;
            su3Var.b = 0;
            su3Var.c = 0;
            su3Var.d = null;
            su3Var.e = 0;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList = this.a;
        try {
            Trace.beginSection("RV Prefetch");
            if (!arrayList.isEmpty()) {
                int size = arrayList.size();
                long jMax = 0;
                for (int i = 0; i < size; i++) {
                    RecyclerView recyclerView = (RecyclerView) arrayList.get(i);
                    if (recyclerView.getWindowVisibility() == 0) {
                        jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                    }
                }
                if (jMax != 0) {
                    b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.c);
                }
            }
        } finally {
            this.b = 0L;
            Trace.endSection();
        }
    }
}
