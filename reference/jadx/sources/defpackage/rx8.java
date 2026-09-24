package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class rx8 {
    public static final Map h;
    public final hg2 a;
    public final int b;
    public final int c;
    public final int d;
    public final String e;
    public final int f;
    public final un8 g;

    static {
        HashMap map = new HashMap();
        f1 f1Var = pj5.a;
        map.put(1, new rx8(10, f1Var));
        map.put(2, new rx8(16, f1Var));
        map.put(3, new rx8(20, f1Var));
        f1 f1Var2 = pj5.b;
        map.put(4, new rx8(10, f1Var2));
        map.put(5, new rx8(16, f1Var2));
        map.put(6, new rx8(20, f1Var2));
        f1 f1Var3 = pj5.e;
        map.put(7, new rx8(10, f1Var3));
        map.put(8, new rx8(16, f1Var3));
        map.put(9, new rx8(20, f1Var3));
        f1 f1Var4 = pj5.f;
        map.put(10, new rx8(10, f1Var4));
        map.put(11, new rx8(16, f1Var4));
        map.put(12, new rx8(20, f1Var4));
        h = Collections.unmodifiableMap(map);
    }

    public rx8(int i, f1 f1Var) {
        if (i < 2) {
            c6.f("height must be >= 2");
            throw null;
        }
        if (f1Var == null) {
            f6.n("digest == null");
            throw null;
        }
        this.b = i;
        int i2 = 2;
        while (true) {
            int i3 = this.b;
            if (i2 > i3) {
                l0.e("should never happen...");
                throw null;
            }
            if ((i3 - i2) % 2 == 0) {
                this.c = i2;
                String str = (String) ll2.b.get(f1Var);
                if (str == null) {
                    g84.k(f1Var, "unrecognized digest oid: ");
                    throw null;
                }
                this.e = str;
                un8 un8Var = new un8(f1Var);
                this.g = un8Var;
                int i4 = un8Var.a;
                this.f = i4;
                int i5 = un8Var.b;
                this.d = i5;
                this.a = (hg2) hg2.c.get(hg2.a(str, i4, i5, un8Var.c, i));
                return;
            }
            i2++;
        }
    }

    public rx8(int i, hl2 hl2Var) {
        this(i, ll2.b(hl2Var.f()));
    }
}
