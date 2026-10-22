package defpackage;

import android.widget.TextView;
import com.bumptech.glide.a;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class f75 {
    public final k28 a;
    public final int b;
    public final int c;
    public final gv7 d;
    public final bp0 e;

    public f75(k28 k28Var, int i) {
        boolean z = (i & 2) == 0;
        final int i2 = (i & 4) != 0 ? R.font.main_bold : R.font.main_medium;
        k28Var.getClass();
        int iV = tu0.v((k28Var.getResources().getDisplayMetrics().densityDpi / 160.0f) * 4.0f);
        int iZ = sz8.z(k28Var);
        int iX = sz8.x(k28Var);
        k28Var.getClass();
        this.a = k28Var;
        this.b = iZ;
        this.c = iX;
        this.d = new gv7(new bt3() { // from class: z65
            @Override // defpackage.bt3
            public final Object invoke() {
                return fm6.a(this.a.a, i2);
            }
        });
        e75 e75Var = new e75(this, iV, z);
        float f = k28Var.getResources().getDisplayMetrics().density;
        dx7 dx7Var = new dx7();
        dx7Var.c = -1;
        dx7Var.a = (int) ((4 * f) + 0.5f);
        dx7Var.c = (int) ((1 * f) + 0.5f);
        dx7Var.d = k28Var.getColor(sz8.y(k28Var, R.attr.veryLightDividerTint2));
        dx7Var.b = k28Var.getColor(sz8.y(k28Var, R.attr.veryLightDividerTint));
        dx7Var.a = tu0.v((k28Var.getResources().getDisplayMetrics().densityDpi / 160.0f) * 6.0f);
        vw7 vw7Var = new vw7(new ex7(dx7Var));
        ArrayList<r4> arrayList = new ArrayList(3);
        TextView.BufferType bufferType = TextView.BufferType.SPANNABLE;
        arrayList.add(new jx1());
        arrayList.add(vw7Var);
        arrayList.add(e75Var);
        yk6 yk6VarD = a.a(k28Var).e.d(k28Var);
        yk6VarD.getClass();
        arrayList.add(new ny3(new nh(yk6VarD, 7)));
        arrayList.add(new n64());
        if (arrayList.isEmpty()) {
            l0.e("No plugins were added to this builder. Use #usePlugin method to add them");
            throw null;
        }
        ArrayList<r4> arrayList2 = new ArrayList(arrayList.size());
        HashSet hashSet = new HashSet(3);
        for (r4 r4Var : arrayList) {
            if (!arrayList2.contains(r4Var)) {
                if (hashSet.contains(r4Var)) {
                    y5.g(hashSet, "Cyclic dependency chain found: ");
                    throw null;
                }
                hashSet.add(r4Var);
                r4Var.getClass();
                hashSet.remove(r4Var);
                if (!arrayList2.contains(r4Var)) {
                    if (jx1.class.isAssignableFrom(r4Var.getClass())) {
                        arrayList2.add(0, r4Var);
                    } else {
                        arrayList2.add(r4Var);
                    }
                }
            }
        }
        bx5 bx5Var = new bx5();
        bx5Var.a = new ArrayList();
        bx5Var.b = new ArrayList();
        bx5Var.c = new ArrayList();
        bx5Var.d = un2.p;
        float f2 = k28Var.getResources().getDisplayMetrics().density;
        n75 n75Var = new n75();
        n75Var.g = -1;
        n75Var.h = -1;
        n75Var.f = (int) ((8 * f2) + 0.5f);
        n75Var.b = (int) ((24 * f2) + 0.5f);
        n75Var.c = (int) ((4 * f2) + 0.5f);
        n75Var.d = (int) ((1 * f2) + 0.5f);
        n75Var.g = (int) ((1 * f2) + 0.5f);
        n75Var.h = (int) ((4 * f2) + 0.5f);
        i75 i75Var = new i75();
        om5 om5Var = new om5(8);
        bb2 bb2Var = new bb2(2);
        for (r4 r4Var2 : arrayList2) {
            r4Var2.f(bx5Var);
            r4Var2.h(n75Var);
            r4Var2.e(i75Var);
            r4Var2.i(om5Var);
            r4Var2.g(bb2Var);
        }
        o75 o75Var = new o75(n75Var);
        ky3 ky3Var = new ky3(Collections.unmodifiableMap(bb2Var.a));
        i75Var.a = o75Var;
        i75Var.k = ky3Var;
        if (((jb9) i75Var.b) == null) {
            i75Var.b = new q60();
        }
        if (((sl4) i75Var.c) == null) {
            i75Var.c = new sl4();
        }
        if (((hx0) i75Var.d) == null) {
            i75Var.d = new hx0(10);
        }
        if (((hx0) i75Var.e) == null) {
            i75Var.e = new hx0(9);
        }
        if (((cz4) i75Var.f) == null) {
            i75Var.f = new cz4(13);
        }
        c00 c00Var = new c00(6, om5Var, new j75(i75Var));
        l40 l40Var = new l40(bx5Var);
        List listUnmodifiableList = Collections.unmodifiableList(arrayList2);
        TextView.BufferType bufferType2 = TextView.BufferType.SPANNABLE;
        bp0 bp0Var = new bp0();
        bp0Var.a = l40Var;
        bp0Var.b = c00Var;
        bp0Var.c = listUnmodifiableList;
        this.e = bp0Var;
    }
}
