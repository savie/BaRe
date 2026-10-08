package defpackage;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class kx8 {
    public static final Map e;
    public final gg2 a;
    public final rx8 b;
    public final int c;
    public final int d;

    static {
        HashMap map = new HashMap();
        f1 f1Var = pj5.a;
        map.put(1, new kx8(20, 2, f1Var));
        u48.q(20, 4, f1Var, map, 2);
        u48.q(40, 2, f1Var, map, 3);
        u48.q(40, 4, f1Var, map, 4);
        u48.q(40, 8, f1Var, map, 5);
        u48.q(60, 3, f1Var, map, 6);
        u48.q(60, 6, f1Var, map, 7);
        u48.q(60, 12, f1Var, map, 8);
        f1 f1Var2 = pj5.b;
        map.put(9, new kx8(20, 2, f1Var2));
        u48.q(20, 4, f1Var2, map, 10);
        u48.q(40, 2, f1Var2, map, 11);
        u48.q(40, 4, f1Var2, map, 12);
        u48.q(40, 8, f1Var2, map, 13);
        u48.q(60, 3, f1Var2, map, 14);
        u48.q(60, 6, f1Var2, map, 15);
        u48.q(60, 12, f1Var2, map, 16);
        f1 f1Var3 = pj5.e;
        map.put(17, new kx8(20, 2, f1Var3));
        u48.q(20, 4, f1Var3, map, 18);
        u48.q(40, 2, f1Var3, map, 19);
        u48.q(40, 4, f1Var3, map, 20);
        u48.q(40, 8, f1Var3, map, 21);
        u48.q(60, 3, f1Var3, map, 22);
        u48.q(60, 6, f1Var3, map, 23);
        u48.q(60, 12, f1Var3, map, 24);
        f1 f1Var4 = pj5.f;
        map.put(25, new kx8(20, 2, f1Var4));
        u48.q(20, 4, f1Var4, map, 26);
        u48.q(40, 2, f1Var4, map, 27);
        u48.q(40, 4, f1Var4, map, 28);
        u48.q(40, 8, f1Var4, map, 29);
        u48.q(60, 3, f1Var4, map, 30);
        u48.q(60, 6, f1Var4, map, 31);
        u48.q(60, 12, f1Var4, map, 32);
        e = Collections.unmodifiableMap(map);
    }

    public kx8(int i, int i2, f1 f1Var) {
        this.c = i;
        this.d = i2;
        if (i < 2) {
            c6.f("totalHeight must be > 1");
            throw null;
        }
        if (i % i2 != 0) {
            c6.f("layers must divide totalHeight without remainder");
            throw null;
        }
        int i3 = i / i2;
        if (i3 == 1) {
            c6.f("height / layers must be greater than 1");
            throw null;
        }
        rx8 rx8Var = new rx8(i3, f1Var);
        this.b = rx8Var;
        int i4 = rx8Var.g.c;
        String str = rx8Var.e;
        if (str != null) {
            this.a = (gg2) gg2.c.get(gg2.a(str, rx8Var.f, rx8Var.d, i4, i, i2));
        } else {
            Map map = gg2.c;
            f6.n("algorithmName == null");
            throw null;
        }
    }

    public kx8(int i, int i2, hl2 hl2Var) {
        this(i, i2, ll2.b(hl2Var.f()));
    }
}
